.class public Lpl/droidsonroids/relinker/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;,
        Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;,
        Lpl/droidsonroids/relinker/ReLinker$Logger;,
        Lpl/droidsonroids/relinker/ReLinker$LoadListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static force()Lpl/droidsonroids/relinker/ReLinkerInstance;
    .registers 1

    new-instance v0, Lpl/droidsonroids/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->force()Lpl/droidsonroids/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lpl/droidsonroids/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lpl/droidsonroids/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .registers 5

    .line 4
    new-instance v0, Lpl/droidsonroids/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, p2}, Lpl/droidsonroids/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static log(Lpl/droidsonroids/relinker/ReLinker$Logger;)Lpl/droidsonroids/relinker/ReLinkerInstance;
    .registers 2

    new-instance v0, Lpl/droidsonroids/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Lpl/droidsonroids/relinker/ReLinker$Logger;)Lpl/droidsonroids/relinker/ReLinkerInstance;

    move-result-object p0

    return-object p0
.end method

.method public static recursively()Lpl/droidsonroids/relinker/ReLinkerInstance;
    .registers 1

    new-instance v0, Lpl/droidsonroids/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->recursively()Lpl/droidsonroids/relinker/ReLinkerInstance;

    move-result-object v0

    return-object v0
.end method
