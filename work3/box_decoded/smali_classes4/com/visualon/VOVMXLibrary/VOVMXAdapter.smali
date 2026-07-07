.class public Lcom/visualon/VOVMXLibrary/VOVMXAdapter;
.super Ljava/lang/Object;
.source "VOVMXAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;,
        Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;,
        Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;,
        Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;
    }
.end annotation


# static fields
.field private static final ANALYTICSEXPORT_TYPE_VERSPECTIVE_ONLY:Ljava/lang/Integer;

.field private static final ANALYTICSEXPORT_TYPE_VERSPECTIVE_WITH_VOAE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "@@@VOVMXAdapter"

.field public static configuration:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;

.field private static isEnabled:Z

.field private static isInited:Z

.field private static mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static streamTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnalyticsExportListener:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

.field private mEndCause:Lcom/verimatrix/vdc/Monitor$EndCause;

.field private mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field private final pool:Ljava/util/concurrent/ExecutorService;

.field private streamHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->ANALYTICSEXPORT_TYPE_VERSPECTIVE_ONLY:Ljava/lang/Integer;

    const/4 v0, 0x6

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->ANALYTICSEXPORT_TYPE_VERSPECTIVE_WITH_VOAE:Ljava/lang/Integer;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamTypeMap:Ljava/util/Map;

    .line 55
    sget-object v1, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

    const-string v2, "aud"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/verimatrix/vdc/Monitor$StreamType;->VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    const-string v2, "vid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    const-string v2, "av"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;

    invoke-direct {v0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;-><init>()V

    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->configuration:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;

    const/4 v0, 0x0

    .line 130
    sput-boolean v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->isInited:Z

    .line 131
    sput-boolean v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->isEnabled:Z

    .line 132
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/high16 v0, -0x80000000

    .line 135
    iput v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamHandle:I

    .line 136
    sget-object v0, Lcom/verimatrix/vdc/Monitor$EndCause;->TERMINATED_BY_USER:Lcom/verimatrix/vdc/Monitor$EndCause;

    iput-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mEndCause:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 137
    new-instance v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-direct {v0, p0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;-><init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)V

    iput-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mAnalyticsExportListener:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 140
    sget-boolean v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->isInited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->init(Landroid/app/Application;)V

    .line 142
    sput-boolean v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->isInited:Z

    .line 144
    :cond_0
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$1900()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 49
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->pool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamHandle:I

    return p0
.end method

.method static synthetic access$302(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamHandle:I

    return p1
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 49
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)Lcom/verimatrix/vdc/Monitor$EndCause;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mEndCause:Lcom/verimatrix/vdc/Monitor$EndCause;

    return-object p0
.end method

.method static synthetic access$602(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$EndCause;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mEndCause:Lcom/verimatrix/vdc/Monitor$EndCause;

    return-object p1
.end method

.method private translateReturnCode(Lcom/verimatrix/vdc/Monitor$Status;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 205
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$1;->$SwitchMap$com$verimatrix$vdc$Monitor$Status:[I

    invoke-virtual {p1}, Lcom/verimatrix/vdc/Monitor$Status;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 212
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 209
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_STATUS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 207
    :cond_1
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method


# virtual methods
.method public applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 193
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/verimatrix/vdc/MonitorAgent;->applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;I)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->translateReturnCode(Lcom/verimatrix/vdc/Monitor$Status;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public disableVOVMXAdapter()V
    .locals 3

    .line 168
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 169
    sget-boolean v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mAnalyticsExportListener:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-virtual {v0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->destroy()V

    .line 171
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->enableAnalyticsExport(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 172
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAnalyticsVoExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 173
    iput-object v2, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 174
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->logout()Lcom/verimatrix/vdc/Monitor$Status;

    .line 175
    sput-boolean v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->isEnabled:Z

    .line 177
    :cond_0
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public enableVOVMXAdapter(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 4

    const v0, 0x10048

    .line 148
    invoke-interface {p1, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getParameter(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 149
    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->ANALYTICSEXPORT_TYPE_VERSPECTIVE_WITH_VOAE:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->ANALYTICSEXPORT_TYPE_VERSPECTIVE_ONLY:Ljava/lang/Integer;

    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 155
    sput-boolean v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->isEnabled:Z

    .line 156
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 157
    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->configuration:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;

    invoke-virtual {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 158
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/verimatrix/vdc/MonitorAgent;->login(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    .line 159
    iget-object v2, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->enableAnalyticsExport(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 160
    iget-object v2, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mAnalyticsExportListener:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-virtual {v2, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V

    .line 161
    iget-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    iget-object v2, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mAnalyticsExportListener:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-interface {p1, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAnalyticsVoExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 162
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorAgent;->getGeneratedUid()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "@@@VOVMXAdapter"

    const-string v1, "Generated Uid is %s"

    .line 163
    invoke-static {p1, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    sget-object p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "VOVMXAdapter"

    const-string v1, "License check failed."

    .line 151
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 197
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public genericAttributesChange(Ljava/util/Map;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    iget v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/verimatrix/vdc/MonitorAgent;->genericAttributesChangeWithStreamHandle(ILjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->translateReturnCode(Lcom/verimatrix/vdc/Monitor$Status;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public playbackConsumptionMethodChange(JLjava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 185
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    iget v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamHandle:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/verimatrix/vdc/MonitorAgent;->playbackConsumptionMethodChangeWithStreamHandle(IJLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->translateReturnCode(Lcom/verimatrix/vdc/Monitor$Status;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public playbackMetadataChange(JLjava/util/Map;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    iget v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->streamHandle:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/verimatrix/vdc/MonitorAgent;->playbackMetadataChangeWithStreamHandle(IJLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->translateReturnCode(Lcom/verimatrix/vdc/Monitor$Status;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public stop(Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->mAnalyticsExportListener:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$000(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->translateReturnCode(Lcom/verimatrix/vdc/Monitor$Status;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method
