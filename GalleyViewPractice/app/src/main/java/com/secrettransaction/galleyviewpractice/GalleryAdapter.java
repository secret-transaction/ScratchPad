package com.secrettransaction.galleyviewpractice;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
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
        Queue<View> viewQueue = new LinkedList<View>();

        View get(Integer position) {
            View v = null;

            if (viewQueue.size() > 10) {
                v = viewQueue.remove();
            }

            return v;
        }

        void put(Integer position, View view) {
            viewQueue.add(view);
        }
    }
}
