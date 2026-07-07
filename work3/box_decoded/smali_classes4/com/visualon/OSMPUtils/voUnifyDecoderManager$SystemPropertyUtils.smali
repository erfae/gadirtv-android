.class Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;
.super Ljava/lang/Object;
.source "voUnifyDecoderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voUnifyDecoderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertyUtils"
.end annotation


# static fields
.field private static volatile getter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 421
    :try_start_0
    sget-object v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;->getter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 422
    const-class v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    :try_start_1
    sget-object v4, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;->getter:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    const-string v4, "android.os.SystemProperties"

    .line 424
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    new-array v6, v3, [Ljava/lang/Class;

    .line 425
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;->getter:Ljava/lang/reflect/Method;

    .line 427
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 429
    :cond_1
    :goto_0
    sget-object v0, Lcom/visualon/OSMPUtils/voUnifyDecoderManager$SystemPropertyUtils;->getter:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 431
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p1
.end method
