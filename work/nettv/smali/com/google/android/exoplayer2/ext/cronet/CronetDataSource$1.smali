.class Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;
.super Lorg/chromium/net/UrlRequest$StatusListener;
.source "CronetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;->getStatus(Lorg/chromium/net/UrlRequest;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field public final synthetic val$statusHolder:[I


# direct methods
.method public constructor <init>([ILcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;->val$statusHolder:[I

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;->val$conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$StatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;->val$statusHolder:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$1;->val$conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void
.end method
