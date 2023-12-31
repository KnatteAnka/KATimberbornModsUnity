/*using System;
using BepInEx;
using BepInEx.Logging;
using TimberbornAPI;
using TimberbornAPI.Common;

//using TimberbornAPI.AssetLoaderSystem.ResourceAssetPatch;
//using UnityEngine;
using HarmonyLib;

namespace WaterExtention
{
    [BepInPlugin(PluginGuid, PluginName, PluginVersion)]
    [BepInDependency("com.timberapi.timberapi")]
    public class Plugin : BaseUnityPlugin
    {
        public const string PluginGuid = "knatte.waterextention";
        public const string PluginName = "WaterExtention";
        public const string PluginVersion = "0.1.1";

        public static ManualLogSource Log;

        private void Awake()
        {
            Log = Logger;
            
            Log.LogInfo($"Loaded {PluginName} Version: {PluginVersion}!");

            TimberAPI.AssetRegistry.AddSceneAssets(PluginGuid, SceneEntryPoint.Global);
            //new Harmony(PluginGuid).PatchAll();
        }
    }
    
}*/