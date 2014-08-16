package com.secrettransaction.galleyviewpractice;

import android.content.Context;
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

    private static final String TAG = GalleryAdapter.class.getSimpleName();

//    private Recycler recycler = new Recycler();

    @Override
    public int getCount() {
        return 7;
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
        Log.d(TAG, "Position=" + position);

//        if (convertView==null) {
//            convertView = recycler.get(position);
//        }

        if (convertView==null) {
            Log.d("CREATE", "New");
            //throw new RuntimeException("dddd");
            convertView = LayoutInflater.from(Application.getContext()).inflate(R.layout.view_gallery_item, parent, false);
        }

//        recycler.put(position, convertView);

        ImageView im = (ImageView) convertView.findViewById(R.id.imageView);

        Context ctx = Application.getContext();

        if (position == 0) {
            im.setImageDrawable(ctx.getResources().getDrawable(R.drawable.droid1));
            //im.setBackgroundResource(R.drawable.droid1);
        }  else if (position == 1) {
            im.setImageDrawable(ctx.getResources().getDrawable(R.drawable.droid2));
            //im.setBackgroundResource(R.drawable.droid2);
        } else if (position == 2) {
            im.setImageDrawable(ctx.getResources().getDrawable(R.drawable.droid3));
            //im.setBackgroundResource(R.drawable.droid3);
        } else if (position == 3) {
            im.setImageDrawable(ctx.getResources().getDrawable(R.drawable.droid4));
            //im.setBackgroundResource(R.drawable.droid4);
        } else if (position == 4) {
            im.setImageDrawable(ctx.getResources().getDrawable(R.drawable.droid5));
            //im.setBackgroundResource(R.drawable.droid5);
        } else if (position == 5) {
            im.setImageDrawable(ctx.getResources().getDrawable(R.drawable.droid6));
            //im.setBackgroundResource(R.drawable.droid6);
        } else {
            im.setImageDrawable(ctx.getResources().getDrawable(R.drawable.droid7));
            //im.setBackgroundResource(R.drawable.droid7);
        }

        return convertView;
    }

//    class Recycler {
//        Queue<View> viewQueue = new LinkedList<View>();
//
//        View get(Integer position) {
//            View v = null;
//
//            if (viewQueue.size() > 10) {
//                v = viewQueue.remove();
//            }
//
//            return v;
//        }
//
//        void put(Integer position, View view) {
//            viewQueue.add(view);
//        }
//    }
}
