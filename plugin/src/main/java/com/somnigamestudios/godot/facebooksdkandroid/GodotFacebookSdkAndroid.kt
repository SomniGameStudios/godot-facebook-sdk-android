package com.somnigamestudios.godot.facebooksdkandroid

import android.app.Activity
import android.util.Log
import android.view.View
import com.facebook.FacebookSdk
import org.godotengine.godot.Godot
import org.godotengine.godot.plugin.GodotPlugin
import org.godotengine.godot.plugin.UsedByGodot

class GodotFacebookSdkAndroid(godot: Godot): GodotPlugin(godot) {

    private val tag = "godot"

    override fun getPluginName() = BuildConfig.GODOT_PLUGIN_NAME

    override fun onMainCreate(activity: Activity?): View? {
        Thread.setDefaultUncaughtExceptionHandler { _, exception ->
            Log.e(tag, "Uncaught Exception! ${exception.message}")
        }
        return super.onMainCreate(activity)
    }

    @UsedByGodot
    fun setDebugMode(isDebug: Boolean){
        FacebookSdk.setIsDebugEnabled(isDebug)
    }

    @UsedByGodot
    fun testPlugin() {
        Log.i(tag, "Info/GodotFacebookSdkAndroid: Plugin is working!")
    }
}
