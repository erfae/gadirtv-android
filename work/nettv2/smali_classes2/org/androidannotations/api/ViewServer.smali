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
    .locals 1

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
    .locals 1

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
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Ljava/net/Socket;)Z
    .locals 1

    const-string v0, "4"

    invoke-static {p0, v0}, Lorg/androidannotations/api/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lorg/androidannotations/api/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/androidannotations/api/ViewServer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mFocusedWindow:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/androidannotations/api/ViewServer;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/androidannotations/api/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    iget-object p0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/androidannotations/api/ViewServer;Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/androidannotations/api/ViewServer;->addWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V

    return-void
.end method

.method public static synthetic access$800(Lorg/androidannotations/api/ViewServer;Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/androidannotations/api/ViewServer;->removeWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V

    return-void
.end method

.method private addWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private fireFocusChangedEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/ViewServer$WindowListener;

    .line 2
    invoke-interface {v1}, Lorg/androidannotations/api/ViewServer$WindowListener;->focusChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireWindowsChangedEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/androidannotations/api/ViewServer$WindowListener;

    .line 2
    invoke-interface {v1}, Lorg/androidannotations/api/ViewServer$WindowListener;->windowsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/androidannotations/api/ViewServer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Lorg/androidannotations/api/ViewServer;

    const/16 v0, 0x134b

    invoke-direct {p0, v0}, Lorg/androidannotations/api/ViewServer;-><init>(I)V

    sput-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    .line 5
    :cond_0
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    invoke-virtual {p0}, Lorg/androidannotations/api/ViewServer;->isRunning()Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    :try_start_0
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    invoke-virtual {p0}, Lorg/androidannotations/api/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ViewServer"

    const-string v1, "Error:"

    .line 7
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Lorg/androidannotations/api/ViewServer$NoopViewServer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/androidannotations/api/ViewServer$NoopViewServer;-><init>(Lorg/androidannotations/api/ViewServer$1;)V

    sput-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    .line 9
    :cond_2
    :goto_0
    sget-object p0, Lorg/androidannotations/api/ViewServer;->sServer:Lorg/androidannotations/api/ViewServer;

    return-object p0
.end method

.method private removeWindowListener(Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 2
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 4
    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7
    :catch_1
    :cond_0
    throw p0

    :catch_2
    nop

    :goto_1
    if-eqz v1, :cond_1

    .line 8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_2
    return v0
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

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

    goto :goto_0

    :cond_0
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
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/androidannotations/api/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    :try_start_0
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 14
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;->fireWindowsChangedEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/ViewServer;->removeWindow(Landroid/view/View;)V

    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 5
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;->fireWindowsChangedEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public run()V
    .locals 5

    const-string v0, "ViewServer"

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lorg/androidannotations/api/ViewServer;->mPort:I

    const/16 v3, 0xa

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Starting ServerSocket error: "

    .line 2
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lorg/androidannotations/api/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lorg/androidannotations/api/ViewServer$ViewServerWorker;

    invoke-direct {v3, p0, v1}, Lorg/androidannotations/api/ViewServer$ViewServerWorker;-><init>(Lorg/androidannotations/api/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 7
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    .line 8
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Connection error: "

    .line 9
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/androidannotations/api/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 5
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;->fireFocusChangedEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
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
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const-string v2, "ViewServer"

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not stop all view server threads"

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mThread:Ljava/lang/Thread;

    .line 8
    :try_start_1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 9
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    const-string v0, "Could not close the view server"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    :try_start_2
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

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
    :try_start_3
    iput-object v1, p0, Lorg/androidannotations/api/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    .line 17
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
