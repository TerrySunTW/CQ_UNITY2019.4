#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using System.IO;
public class BuildScript : MonoBehaviour
{
    [MenuItem("Build Tool/Build apk")]
    public static void WaveVRBuild()
    {
        string[] scenes = {
            "Assets/Scenes/SampleScene.unity"
        };

        BuildPipeline.BuildPlayer(scenes, Directory.GetCurrentDirectory() + "/Release/SampleScene.apk", BuildTarget.Android, BuildOptions.None);
    }
}

#endif