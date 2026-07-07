.class public Lcom/visualon/OSMPUtils/voID3ContainerImpl;
.super Ljava/lang/Object;
.source "voID3ContainerImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voID3Container;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_CHECK_TIME:J = 0x7d0L

.field private static final MIN_DELAY_TIME:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "@@@voID3ContainerImpl"

.field private static final messageCustomTag:I = -0xf0ffffc


# instance fields
.field private customerTagList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/visualon/OSMPUtils/voOSTimedTag;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

.field private mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSourceUrl:Ljava/lang/String;

.field treeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    const-string v1, ""

    .line 50
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->urlPath:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/visualon/OSMPUtils/voID3ContainerImpl$1;

    invoke-direct {v2, p0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$1;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "@@@voID3ContainerImpl"

    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    .line 92
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Looper.myLooper()"

    .line 93
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    .line 97
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "getMainLooper()"

    .line 98
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    .line 103
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    return-object p0
.end method


# virtual methods
.method public addID3(Lcom/visualon/OSMPUtils/voOSTimedTag;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public check(J)V
    .locals 11

    .line 114
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPUtils/voOSTimedTag;

    .line 121
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    if-eqz v3, :cond_2

    .line 126
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 127
    new-instance v4, Ljava/lang/String;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 128
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const-string v5, "@@@voID3ContainerImpl"

    const-string v8, "Call onSendID3Event, tag flag is %d, size is %d, timestamp is %d, %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 131
    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Flag()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x2

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x3

    aput-object v4, v9, v3

    .line 129
    invoke-static {v5, v8, v9}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    const v4, 0x2000020

    invoke-interface {v3, v4, v7, v6, v2}, Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;->onSendID3Event(IIILjava/lang/Object;)I

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 139
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 140
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPUtils/voOSTimedTag;

    .line 141
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    const v7, -0xf0ffffc

    cmp-long v8, p1, v3

    if-nez v8, :cond_4

    .line 145
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    invoke-virtual {p1, v7, v5, v6}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 148
    :cond_4
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1, v7, v1, v2}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getThumbnailByTime(I)Ljava/lang/String;
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, ""

    .line 275
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 276
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "http://"

    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->urlPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRequest(IIILjava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    const v1, 0x2000020

    if-ne p1, v1, :cond_5

    .line 320
    move-object v1, p4

    check-cast v1, Lcom/visualon/OSMPUtils/voOSTimedTag;

    if-nez v1, :cond_1

    .line 322
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "@@@voID3ContainerImpl"

    const-string p2, "VOOSMP_SRC_CB_Customer_Tag = null"

    new-array p3, v0, [Ljava/lang/Object;

    .line 323
    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    const/16 v2, 0x63

    if-ne p2, v2, :cond_2

    .line 329
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;

    invoke-direct {v3, p0, v1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Lcom/visualon/OSMPUtils/voOSTimedTag;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 345
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 347
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 348
    new-instance p2, Ljava/lang/String;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    .line 349
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "@@@voID3ContainerImpl"

    const-string p4, "mTimedTagList customerTagWrap saving, Flag is %d, size is %d, timestamp is %d, %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 352
    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Flag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x3

    aput-object p2, v3, p1

    .line 350
    invoke-static {p3, p4, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :cond_3
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 357
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->addID3(Lcom/visualon/OSMPUtils/voOSTimedTag;)V

    .line 358
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    const p2, -0xf0ffffc

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 359
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 361
    :cond_4
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->addID3(Lcom/visualon/OSMPUtils/voOSTimedTag;)V

    .line 363
    :goto_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 368
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 369
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    if-eqz v1, :cond_6

    .line 370
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;->onSendID3Event(IIILjava/lang/Object;)I

    move-result p1

    .line 371
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_6
    return v0
.end method

.method public reset()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFrameScrubbingUrl(Ljava/lang/Object;)V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 165
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 169
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 170
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    .line 171
    aget-object v3, p1, v2

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    .line 172
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".m3u8"

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    aget-object v0, p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "http"

    .line 181
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/16 v2, 0x2f

    .line 183
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr p1, v4

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "@@@voID3ContainerImpl"

    const-string v2, "VOOSMP_SRC_CB_Customer_Tag url = %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 187
    invoke-static {p1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_2
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->setThumbnailURL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setID3Listener(Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    .line 300
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailURL(Ljava/lang/String;)V
    .locals 9

    const-string v0, "/"

    const-string v1, "@@@voID3ContainerImpl"

    .line 201
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    .line 203
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Thumbnail PlayList download begin"

    new-array v5, v2, [Ljava/lang/Object;

    .line 205
    invoke-static {v1, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->urlPath:Ljava/lang/String;

    .line 209
    :cond_1
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_3

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 216
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v0, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 222
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 225
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p1, :cond_8

    .line 231
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "\n"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 235
    :goto_2
    array-length v4, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-ge v0, v4, :cond_6

    .line 237
    :try_start_1
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-le v4, v6, :cond_5

    aget-object v4, p1, v0

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "#EXTINF:"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    array-length v4, p1

    sub-int/2addr v4, v7

    if-ge v0, v4, :cond_5

    .line 239
    aget-object v4, p1, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\r"

    .line 240
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    .line 241
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 244
    iget-object v5, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    aget-object v8, p1, v0

    invoke-virtual {v5, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Thumbnail PlayList item begin time = %d, url = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    aget-object v8, p1, v0

    aput-object v8, v6, v7

    invoke-static {v1, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/2addr v3, v4

    :cond_5
    add-int/2addr v0, v7

    goto :goto_2

    .line 255
    :cond_6
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 256
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 260
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Thumbnail PlayList download Exception"

    new-array v2, v2, [Ljava/lang/Object;

    .line 261
    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_4
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
