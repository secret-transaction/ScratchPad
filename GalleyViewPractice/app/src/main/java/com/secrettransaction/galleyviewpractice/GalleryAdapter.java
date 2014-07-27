package com.secrettransaction.galleyviewpractice;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

/**
 * Created by lbibera on 7/27/14.
 */
public class GalleryAdapter extends BaseAdapter {

    private Recycler recycler = new Recycler();

    @Override
    public int getCount() {
        return 100;
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        Log.d("POS", "Pos=" + position);

        if (convertView==null) {
            convertView = recycler.get(position);
        }

        if (convertView==null) {
            Log.d("CREATE", "New");
            //throw new RuntimeException("dddd");
            convertView = LayoutInflater.from(Application.getContext()).inflate(R.layout.view_gallery_item, parent, false);
        }

        recycler.put(position, convertView);

        ImageView im = (ImageView) convertView.findViewById(R.id.imageView);

        if (position%2==0) {
            im.setBackgroundResource(R.drawable.droid1);
        } else {
            im.setBackgroundResource(R.drawable.droid3);
        }

        return convertView;
    }

    class Recycler {
        Map<Integer, View> cache = new HashMap<Integer, View>();
        Integer lastPosition = 0;

        View get(Integer position) {
            int cacheAdvance = 5;

            if (direction(position) > 0) { //if moving towards left
                View v = cache.get(position+cacheAdvance);
                cache.remove(position+cacheAdvance);
                return v;
            } else {
                View v = cache.get(position-cacheAdvance);
                cache.remove(position-cacheAdvance);
                return v;
            }
        }

        private Integer direction(Integer position) {
            Integer dir = lastPosition - position;
            lastPosition = position;
            return dir;
        }

        void put(Integer position, View view) {
            cache.put(position, view);
        }
    }
}
