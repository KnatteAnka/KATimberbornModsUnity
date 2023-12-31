/*using System;
using BepInEx;
using BepInEx.Logging;
using TimberbornAPI;
using TimberbornAPI.Common;

//using TimberbornAPI.AssetLoaderSystem.ResourceAssetPatch;
//using UnityEngine;
using HarmonyLib;

namespace FrogStatue
{
    [BepInPlugin(PluginGuid, PluginName, PluginVersion)]
    [BepInDependency("com.timberapi.timberapi")]
    public class Plugin : BaseUnityPlugin
    {
        public const string PluginGuid = "knatte.frogstatue";
        public const string PluginName = "FrogStatue";
        public const string PluginVersion = "1.0.7";

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