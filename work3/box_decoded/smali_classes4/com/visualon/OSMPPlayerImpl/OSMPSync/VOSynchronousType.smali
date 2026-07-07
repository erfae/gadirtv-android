.class public final enum Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;
.super Ljava/lang/Enum;
.source "VOSynchronousType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

.field public static final enum CLIENT:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

.field public static final enum NOSYNC:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

.field public static final enum SERVER:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    const-string v1, "SERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->SERVER:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    .line 5
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    const-string v3, "CLIENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->CLIENT:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    .line 6
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    const-string v5, "NOSYNC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->NOSYNC:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;
    .locals 1

    .line 3
    const-class v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;
    .locals 1

    .line 3
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    return-object v0
.end method
