.class public Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inka/ncg2/ScreenRecorderDetectInterface;


# static fields
.field private static TAG:Ljava/lang/String; = "ScreenRecorderDetectorIcsOrLower"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppPackageName:Ljava/lang/String;

.field private mBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManagerReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mBlackList:Ljava/util/HashSet;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mAppPackageName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mAppName:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList$1;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList$1;-><init>(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;)V

    iput-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mPackageManagerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->getApplicationName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;)Ljava/util/HashSet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mBlackList:Ljava/util/HashSet;

    return-object p0
.end method

.method private getApplicationName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private registerActionReceiver()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mPackageManagerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private unregisterActionReceiver()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mPackageManagerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "receiver not registered"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    sget-object v1, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public detect()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->isBlackListAppInstalled()Z

    move-result v0

    return v0
.end method

.method public getDetectedAppName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getDetectedAppPackageName()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->getDetectedScreenRecorderPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetectedScreenRecorderPackageName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 40

    move-object/from16 v0, p0

    .line 24
    sget-object v1, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->TAG:Ljava/lang/String;

    const-string v2, "ScreenRecorderDetectorByBlackList Enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    .line 26
    iput-object v1, v0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mContext:Landroid/content/Context;

    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mBlackList:Ljava/util/HashSet;

    const-string v2, "com.nll.screenrecorder"

    const-string v3, "com.iwobanas.screenrecorder.noroot.free"

    const-string v4, "com.iwobanas.screenrecorder.free2"

    const-string v5, "com.iwobanas.screenrecorder.pro"

    const-string v6, "com.rivulus.screenrecording"

    const-string v7, "com.spectrl.rec"

    const-string v8, "us.capturevideo.screenrecorder"

    const-string v9, "org.mistygames.screenrecord"

    const-string v10, "uk.org.invisibility.recordablefree"

    const-string v11, "com.hecorat.screenrecorder.free"

    const-string v12, "com.iscreenrecorder"

    const-string v13, "com.rsupport.mvagent"

    const-string v14, "com.oxa7.shou"

    const-string v15, "com.alicunadev.screen.recorder.hdplus.free"

    const-string v16, "com.record.screen"

    const-string v17, "com.fikonsoft.screen.recorder.capture.free"

    const-string v18, "com.kunyasoft.screen.recorder.hd.pro"

    const-string v19, "com.ms.screencastfree"

    const-string v20, "com.ms.screencast"

    const-string v21, "com.screenrecnoroot"

    const-string v22, "com.zeronoiseapps.secretvideorecorder"

    const-string v23, "com.sylkat.Ascrecorder"

    const-string v24, "com.suzyapp.screen.rec.hd.pro"

    const-string v25, "com.zeronoiseapps.onetouchvideorecorder"

    const-string v26, "com.appdoodle.tools.capturescreenplus"

    const-string v27, "com.brianco.screenrecord"

    const-string v28, "com.secret.video"

    const-string v29, "uk.org.invisibility.recordable"

    const-string v30, "com.icos.ilos.uploader"

    const-string v31, "com.slimdroid.screenrecoder"

    const-string v32, "com.bugunsoft.disrecpreview"

    const-string v33, "com.nll.screenrecorder.license"

    const-string v34, "com.ggames.hiddenrecorder"

    const-string v35, "com.rsupport.mobizen.sec"

    const-string v36, "com.rsupport.mobizen.bignote"

    const-string v37, "com.rsupport.mobizen.lg"

    const-string v38, "screen.umttt.com.screenshot"

    const-string v39, "com.duapps.recorder"

    .line 28
    filled-new-array/range {v2 .. v39}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x26

    if-ge v2, v3, :cond_0

    .line 69
    aget-object v3, v1, v2

    .line 70
    iget-object v4, v0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mBlackList:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->registerActionReceiver()V

    return-void
.end method

.method public isBlackListAppInstalled()Z
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mContext:Landroid/content/Context;

    const/16 v4, 0x80

    invoke-direct {p0, v3, v1, v4}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->getApplicationName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 120
    iput-object v1, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mAppPackageName:Ljava/lang/String;

    const-string v3, "Detected a screen recorder app, AppName : [%s] AppPackageName : [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 121
    iget-object v5, p0, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->mAppName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v3

    .line 123
    iget-object v4, v3, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    if-eqz v4, :cond_1

    .line 124
    iget-object v3, v3, Lcom/inka/ncg2/i;->b:Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;

    new-instance v4, Lcom/inka/ncg2/Ncg2DetectedScreenRecorder;

    invoke-direct {v4, v1}, Lcom/inka/ncg2/Ncg2DetectedScreenRecorder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;->logException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return v2
.end method

.method public release()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/inka/ncg2/ScreenRecorderDetectorByBlackList;->unregisterActionReceiver()V

    return-void
.end method
