.class public final synthetic Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
