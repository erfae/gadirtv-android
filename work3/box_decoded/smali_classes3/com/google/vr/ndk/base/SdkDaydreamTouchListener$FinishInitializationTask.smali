.class Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishInitializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;",
        ">;"
    }
.end annotation


# instance fields
.field public display:Landroid/view/Display;

.field final synthetic this$0:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;


# direct methods
.method private constructor <init>(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->this$0:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;-><init>(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->this$0:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    invoke-static {p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->access$200(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/vr/cardboard/VrParamsProvider;->readDisplayParams()Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->doInBackground([Ljava/lang/Void;)Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)V
    .locals 4

    .line 4
    new-instance v0, Lcom/google/vr/cardboard/AndroidPCompat;

    invoke-direct {v0}, Lcom/google/vr/cardboard/AndroidPCompat;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->display:Landroid/view/Display;

    .line 6
    invoke-static {v1, p1}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->this$0:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    iget-object v3, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->display:Landroid/view/Display;

    invoke-virtual {v0, v3}, Lcom/google/vr/cardboard/AndroidPCompat;->getDisplayCutout(Landroid/view/Display;)Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;

    move-result-object v0

    invoke-static {v2, v1, p1, v0}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->access$300(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;Lcom/google/vr/cardboard/AndroidPCompat$DisplayCutoutCompat;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->onPostExecute(Lcom/google/vr/sdk/proto/nano/Display$DisplayParams;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitializationTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
