Shader "Shader Graphs/EnvironmentURP" {
	Properties {
		_Color ("Color", Vector) = (1,1,1,1)
		[NoScaleOffset] _MainTex ("Albedo", 2D) = "white" {}
		[NoScaleOffset] _ColorMask ("Color Mask", 2D) = "white" {}
		[NoScaleOffset] _AmbientOcclusion ("Ambient Occlusion", 2D) = "white" {}
		[NoScaleOffset] _MetallicGlossMap ("Metallic Map", 2D) = "black" {}
		[ToggleUI] _CutoutWithAlpha ("Cutout With Alpha", Float) = 0
		[NoScaleOffset] _CutoutTex ("Cutout texture", 2D) = "white" {}
		_Cutoff ("Cutout With Alpha Threshold", Range(0, 1)) = 0.5
		[NoScaleOffset] [Normal] _BumpMap ("Normal Map", 2D) = "bump" {}
		[NoScaleOffset] _DetailAlbedoMap ("Detail Albedo", 2D) = "grey" {}
		[NoScaleOffset] _DetailAlbedoMap2 ("Detail Albedo UV2", 2D) = "black" {}
		_DetailAlbedoUV2Color ("Detail Albedo UV2 Color", Vector) = (0.7450981,0.7450981,0.7450981,1)
		_EmissionColor ("Emission Color", Vector) = (0,0,0,0)
		[NoScaleOffset] _LightingMap ("LightingMap", 2D) = "black" {}
		_LightingStrength ("LightingStrength", Range(0, 1)) = 0
		_LightingHue ("LightingHue", Range(0, 1)) = 0
		_Grayscale ("Grayscale", Range(0, 1)) = 0
		[ToggleUI] _MainUVFromCoordinates ("Replace main UV with coordinates", Float) = 0
		_MainUVFromCoordinatesScale ("Replaced main UV scale", Float) = 1
		_HeightCutoff ("HeightCutoff", Float) = -100000
		[HideInInspector] _QueueOffset ("_QueueOffset", Float) = 0
		[HideInInspector] _QueueControl ("_QueueControl", Float) = -1
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}