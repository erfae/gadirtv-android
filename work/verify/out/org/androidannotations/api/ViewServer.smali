.class public Lorg/androidannotations/api/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/ViewServer$ViewServerWorker;,
        Lorg/androidannotations/api/ViewServer$NoopViewServer;,
        Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;,
        Lorg/androidannotations/api/ViewServer$WindowListener;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field private static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa

.field private static sServer:Lorg/androidannotations/api/ViewServer;


# instance fields
.field private final mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mFocusedWindow:Landroid/view/View;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/androidannotations/api/ViewServer$WindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lorg/androidannotations/api/ViewServer;->mPort:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    iput p1, p0, Lorg/androidannotations/api/ViewServer;->mPort:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/androidannotations/api/ViewServer$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Ljava/net/Socket;)Z
    .registers 2

    const-string v0, "4"

    invoke-static {p0, v0}, Lorg/androidannotations/api/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lorg/androidannotations/api/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/androidannotations/api/ViewServer;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mFocusedWindow:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/androidannotations/api/ViewServer;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/androidannotations/api/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/androidannotations/api/ViewServer;Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/androidannotations/api/ViewServer;->addWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V

    return-void
.end method

.method public static synthetic access$800(Lorg/androidannotations/api/ViewServer;Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/androidannotations/api/ViewServer;->removeWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V

    return-void
.end method

.method private addWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private fireFocusChangedEvent()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/ViewServer$WindowListener;

    .line 2
    invoke-interface {v1}, Lorg/androidannotations/api/ViewServer$WindowListener;->focusChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private fireWindowsChangedEvent()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/ViewServer$WindowListener;

    .line 2
    invoke-interface {v1}, Lorg/androidannotations/api/ViewServer$WindowListener;->windowsChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/androidannotations/api/ViewServer;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_38

    .line 3
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    if-nez p0, :cond_21

    .line 4
    new-instance p0, Lorg/androidannotations/api/ViewServer;

    const/16 v0, 0x134b

    invoke-direct {p0, v0}, Lorg/androidannotations/api/ViewServer;-><init>(I)V

    sput-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    .line 5
    :cond_21
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    invoke-virtual {p0}, Lorg/androidannotations/api/ViewServer;->isRunning()Z

    move-result p0

    if-nez p0, :cond_40

    .line 6
    :try_start_29
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    invoke-virtual {p0}, Lorg/androidannotations/api/ViewServer;->start()Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_40

    :catch_2f
    move-exception p0

    const-string v0, "ViewServer"

    const-string v1, "Error:"

    .line 7
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 8
    :cond_38
    new-instance p0, Lorg/androidannotations/api/ViewServer$NoopViewServer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/androidannotations/api/ViewServer$NoopViewServer;-><init>(Lorg/androidannotations/api/ViewServer$1;)V

    sput-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    .line 9
    :cond_40
    :goto_40
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    return-object p0
.end method

.method private removeWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .registers 3

    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 2
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_2f
    .catchall {:try_start_2 .. :try_end_12} :catchall_28

    .line 3
    :try_start_12
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 4
    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_26
    .catchall {:try_start_12 .. :try_end_1d} :catchall_23

    const/4 p0, 0x1

    .line 6
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_35

    const/4 v0, 0x1

    goto :goto_35

    :catchall_23
    move-exception p0

    move-object v1, v2

    goto :goto_29

    :catch_26
    move-object v1, v2

    goto :goto_30

    :catchall_28
    move-exception p0

    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2e

    .line 7
    :catch_2e
    :cond_2e
    throw p0

    :catch_2f
    nop

    :goto_30
    if-eqz v1, :cond_35

    .line 8
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_35

    :catch_35
    :cond_35
    :goto_35
    return v0
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_2f
    const-string v1, "("

    .line 4
    invoke-static {v0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_49
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/androidannotations/api/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .line 11
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    :try_start_9
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f

    .line 13
    iget-object p1, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 14
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;->fireWindowsChangedEvent()V

    return-void

    :catchall_1f
    move-exception p1

    .line 15
    iget-object p2, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/ViewServer;->removeWindow(Landroid/view/View;)V

    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    :try_start_9
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f

    .line 4
    iget-object p1, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 5
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;->fireWindowsChangedEvent()V

    return-void

    :catchall_1f
    move-exception p1

    .line 6
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public run()V
    .registers 6

    const-string v0, "ViewServer"

    .line 1
    :try_start_2
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lorg/androidannotations/api/ViewServer;->mPort:I

    const/16 v3, 0xa

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v1

    const-string v2, "Starting ServerSocket error: "

    .line 2
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :goto_18
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;

    if-eqz v1, :cond_47

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_47

    .line 4
    :try_start_24
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lorg/androidannotations/api/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_37

    .line 6
    new-instance v3, Lorg/androidannotations/api/ViewServer$ViewServerWorker;

    invoke-direct {v3, p0, v1}, Lorg/androidannotations/api/ViewServer$ViewServerWorker;-><init>(Lorg/androidannotations/api/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_36} :catch_40

    goto :goto_18

    .line 7
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_40

    goto :goto_18

    :catch_3b
    move-exception v1

    .line 8
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_18

    :catch_40
    move-exception v1

    const-string v2, "Connection error: "

    .line 9
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    :cond_47
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    .line 3
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    :goto_11
    iput-object p1, p0, Lorg/androidannotations/api/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_20

    .line 4
    iget-object p1, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 5
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;->fireFocusChangedEvent()V

    return-void

    :catchall_20
    move-exception p1

    .line 6
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public start()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Local View Server [port="

    .line 3
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget v2, p0, Lorg/androidannotations/api/ViewServer;->mPort:I

    const-string v3, "]"

    .line 5
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    const/16 v0, 0xa

    .line 7
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 8
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const-string v2, "ViewServer"

    if-eqz v0, :cond_17

    .line 4
    :try_start_e
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    const-string v0, "Could not stop all view server threads"

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_17
    :goto_17
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    .line 8
    :try_start_1b
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 9
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_24

    const/4 v0, 0x1

    return v0

    :catch_24
    const-string v0, "Could not close the view server"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_29
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    :try_start_32
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_61

    .line 13
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 14
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 15
    :try_start_49
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_56

    .line 16
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v0, 0x0

    return v0

    :catchall_56
    move-exception v0

    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :catchall_61
    move-exception v0

    .line 17
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
