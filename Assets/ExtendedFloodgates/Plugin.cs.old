using System;
using BepInEx;
using BepInEx.Logging;
using HarmonyLib;
using TimberbornAPI;
using TimberbornAPI.Common;
using Timberborn.WaterBuildingsUI;
using UnityEngine;
using UnityEngine.UIElements;


namespace WaterAlarm
{
    [BepInPlugin(PluginGuid, PluginName, PluginVersion)]
    [BepInDependency("com.timberapi.timberapi")]
    [BepInDependency("tobbert.categorybutton")]
    public class Plugin : BaseUnityPlugin
    {
        public const string PluginGuid = "knatte.floodgates";
        public const string PluginName = "ExtendedFloodgates";
        public const string PluginVersion = "0.6.6";

        public static ManualLogSource Log;

        private void Awake()
        {
            Log = Logger;
            
            Log.LogInfo($"Loaded {PluginName} Version: {PluginVersion}!");

            TimberAPI.AssetRegistry.AddSceneAssets(PluginGuid, SceneEntryPoint.Global);

            new Harmony(PluginGuid).PatchAll();
        }
    }
    
    
    /*[HarmonyPatch(typeof(FloodgateFragment), "UpdateSliderValue", new Type[] { typeof(float),typeof(Slider) })]
    public class FixMoreStepsPatch
    {
        
        static bool Prefix( float value, ref float __result , ref Slider _slider)
        {
            
            // Original code
            //    private float UpdateSliderValue(float value)
            //    {
            //        float num = Mathf.Round(value * 2f) / 2f;
            //        _slider.SetValueWithoutNotify(num);
            //        return num;
            //    }

            float num = Mathf.Round(value * 4f) / 4f;
            _slider.SetValueWithoutNotify(num);
            Plugin.Log.LogInfo($"*Input: {value} Result: {num}");
            __result = num;
            return false;
        }
       // static void Postfix( float num , ref float __result)
       // {
       //     Plugin.Log.LogInfo($"*Input: {num} Result: {__result}");
       //     __result = num / 2f;
       // }
    }*/
    



    // [HarmonyPatch(typeof(PathReconstructor), "TiltingOffset", new Type[] {typeof(List<Vector3>), typeof(int), typeof(int)})]
    // public class Patch
    // {
    //    
    //     static void Postfix(
    //         Vector3 __result,
    //         List<Vector3> pathCorners,
    //         int startIndex,
    //         int endIndex)
    //     {
    //         Plugin.Log.LogFatal(__result);
    //     }
    // }
    //
    // [HarmonyPatch(typeof(PathReconstructor), "ReconstructPath", new Type[] {typeof(IFlowField), typeof(Vector3), typeof(Vector3), typeof(List<Vector3>)})]
    // public class Patch2
    // {
    //    
    //     static void Postfix(
    //         Vector3 __result,
    //         IFlowField flowField,
    //         Vector3 start,
    //         Vector3 destination,
    //         List<Vector3> pathCorners)
    //     {
    //         Plugin.Log.LogFatal(__result);
    //     }
    // }
}