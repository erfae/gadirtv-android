.class public Lpl/droidsonroids/relinker/ReLinkerInstance;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"


# static fields
.field private static final LIB_DIR:Ljava/lang/String; = "lib"


# instance fields
.field public force:Z

.field public final libraryInstaller:Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;

.field public final libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

.field public final loadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public logger:Lpl/droidsonroids/relinker/ReLinker$Logger;

.field public recursive:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lpl/droidsonroids/relinker/SystemLibraryLoader;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/SystemLibraryLoader;-><init>()V

    new-instance v1, Lpl/droidsonroids/relinker/ApkLibraryInstaller;

    invoke-direct {v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/HashSet;

    .line 4
    iput-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    .line 5
    iput-object v1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryInstaller:Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;

    return-void
.end method

.method public static synthetic access$000(Lpl/droidsonroids/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "%s already loaded previously!"

    .line 2
    invoke-virtual {p0, p2, p1}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 3
    :try_start_0
    iget-object v3, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v3, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "%s (%s) was loaded normally!"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    .line 5
    invoke-virtual {p0, v3, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v3, "Loading the library normally failed: %s"

    invoke-virtual {p0, v3, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object p3, v3, v1

    const-string v4, "%s (%s) was not loaded normally, re-linking..."

    .line 7
    invoke-virtual {p0, v4, v3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-eqz v4, :cond_7

    .line 10
    :cond_1
    iget-boolean v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-eqz v4, :cond_2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    const-string v5, "Forcing a re-link of %s (%s)..."

    .line 11
    invoke-virtual {p0, v5, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v4, "lib"

    .line 12
    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 14
    iget-object v6, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v6, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    new-instance v7, Lpl/droidsonroids/relinker/ReLinkerInstance$2;

    invoke-direct {v7, v6}, Lpl/droidsonroids/relinker/ReLinkerInstance$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v8, v4, v7

    .line 17
    iget-boolean v9, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    if-nez v9, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 18
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 19
    :cond_6
    :goto_1
    iget-object v5, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryInstaller:Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;

    iget-object v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v4}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->supportedAbis()[Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    .line 20
    invoke-interface {v4, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, p1

    move-object v9, v3

    move-object v10, p0

    .line 21
    invoke-interface/range {v5 .. v10}, Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;->installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lpl/droidsonroids/relinker/ReLinkerInstance;)V

    .line 22
    :cond_7
    :try_start_1
    iget-boolean v4, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->recursive:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 23
    :try_start_2
    new-instance v5, Lpl/droidsonroids/relinker/elf/ElfParser;

    invoke-direct {v5, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :try_start_3
    invoke-virtual {v5}, Lpl/droidsonroids/relinker/elf/ElfParser;->parseNeededDependencies()Ljava/util/List;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :try_start_4
    invoke-virtual {v5}, Lpl/droidsonroids/relinker/elf/ElfParser;->close()V

    .line 26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 27
    iget-object v6, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v6, v5}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->unmapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 28
    :goto_3
    invoke-virtual {v4}, Lpl/droidsonroids/relinker/elf/ElfParser;->close()V

    .line 29
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 30
    :catch_1
    :cond_8
    iget-object p1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->loadPath(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    aput-object p3, p1, v1

    const-string p2, "%s (%s) was re-linked!"

    .line 32
    invoke-virtual {p0, p2, p1}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public force()Lpl/droidsonroids/relinker/ReLinkerInstance;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->force:Z

    return-object p0
.end method

.method public final getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->libraryLoader:Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;

    invoke-interface {v0, p2}, Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p3}, Lpl/droidsonroids/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "lib"

    if-eqz v0, :cond_0

    .line 3
    new-instance p3, Ljava/io/File;

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 5
    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 7
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string v1, "."

    .line 8
    invoke-static {p2, v1, p3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p2}, Lpl/droidsonroids/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Beginning load of %s..."

    .line 5
    invoke-virtual {p0, v1, v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lpl/droidsonroids/relinker/ReLinkerInstance$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lpl/droidsonroids/relinker/ReLinkerInstance$1;-><init>(Lpl/droidsonroids/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given library is either null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public log(Lpl/droidsonroids/relinker/ReLinker$Logger;)Lpl/droidsonroids/relinker/ReLinkerInstance;
    .locals 0

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->logger:Lpl/droidsonroids/relinker/ReLinker$Logger;

    return-object p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->logger:Lpl/droidsonroids/relinker/ReLinker$Logger;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lpl/droidsonroids/relinker/ReLinker$Logger;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V

    return-void
.end method

.method public recursively()Lpl/droidsonroids/relinker/ReLinkerInstance;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/droidsonroids/relinker/ReLinkerInstance;->recursive:Z

    return-object p0
.end method
