.class public final enum Lcom/nettv/livestore/apps/FocusStatus;
.super Ljava/lang/Enum;
.source "FocusStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nettv/livestore/apps/FocusStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nettv/livestore/apps/FocusStatus;

.field public static final enum first:Lcom/nettv/livestore/apps/FocusStatus;

.field public static final enum fourth:Lcom/nettv/livestore/apps/FocusStatus;

.field public static final enum second:Lcom/nettv/livestore/apps/FocusStatus;

.field public static final enum third:Lcom/nettv/livestore/apps/FocusStatus;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/nettv/livestore/apps/FocusStatus;

    const-string v1, "first"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nettv/livestore/apps/FocusStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nettv/livestore/apps/FocusStatus;->first:Lcom/nettv/livestore/apps/FocusStatus;

    new-instance v1, Lcom/nettv/livestore/apps/FocusStatus;

    const-string v3, "second"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nettv/livestore/apps/FocusStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nettv/livestore/apps/FocusStatus;->second:Lcom/nettv/livestore/apps/FocusStatus;

    new-instance v3, Lcom/nettv/livestore/apps/FocusStatus;

    const-string v5, "third"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/nettv/livestore/apps/FocusStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nettv/livestore/apps/FocusStatus;->third:Lcom/nettv/livestore/apps/FocusStatus;

    new-instance v5, Lcom/nettv/livestore/apps/FocusStatus;

    const-string v7, "fourth"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/nettv/livestore/apps/FocusStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/nettv/livestore/apps/FocusStatus;->fourth:Lcom/nettv/livestore/apps/FocusStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/nettv/livestore/apps/FocusStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/nettv/livestore/apps/FocusStatus;->$VALUES:[Lcom/nettv/livestore/apps/FocusStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nettv/livestore/apps/FocusStatus;
    .registers 2

    const-class v0, Lcom/nettv/livestore/apps/FocusStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nettv/livestore/apps/FocusStatus;

    return-object p0
.end method

.method public static values()[Lcom/nettv/livestore/apps/FocusStatus;
    .registers 1

    sget-object v0, Lcom/nettv/livestore/apps/FocusStatus;->$VALUES:[Lcom/nettv/livestore/apps/FocusStatus;

    invoke-virtual {v0}, [Lcom/nettv/livestore/apps/FocusStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nettv/livestore/apps/FocusStatus;

    return-object v0
.end method
