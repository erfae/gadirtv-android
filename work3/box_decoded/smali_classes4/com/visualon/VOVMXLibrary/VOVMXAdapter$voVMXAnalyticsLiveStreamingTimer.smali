.class Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;
.super Ljava/lang/Object;
.source "VOVMXAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOVMXLibrary/VOVMXAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voVMXAnalyticsLiveStreamingTimer"
.end annotation


# instance fields
.field final REFERENCE_VALUE:J

.field counter:J

.field lastTimeMillis:J

.field running:Z

.field final synthetic this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;


# direct methods
.method constructor <init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)V
    .locals 4

    .line 222
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x15d3ef79800L

    .line 218
    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->REFERENCE_VALUE:J

    const-wide/16 v2, 0x0

    .line 219
    iput-wide v2, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    .line 220
    iput-wide v2, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->lastTimeMillis:J

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->running:Z

    .line 223
    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    return-void
.end method


# virtual methods
.method getPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getPosition(J)J
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->running:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->lastTimeMillis:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    :goto_0
    return-wide v0
.end method

.method pause()V
    .locals 6

    .line 234
    iget-boolean v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->running:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->running:Z

    .line 236
    iget-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->lastTimeMillis:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    :cond_0
    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->running:Z

    const-wide v0, 0x15d3ef79800L

    .line 251
    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    return-void
.end method

.method seek(J)V
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    return-void
.end method

.method setPosition(J)V
    .locals 0

    .line 241
    iput-wide p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->counter:J

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->lastTimeMillis:J

    return-void
.end method

.method start()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->running:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->running:Z

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->lastTimeMillis:J

    :cond_0
    return-void
.end method
