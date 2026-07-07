.class public final enum Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;
.super Ljava/lang/Enum;
.source "CurrentPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

.field public static final enum defaultPlayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

.field public static final enum exoplayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

.field public static final enum visualOn:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    const-string v1, "exoplayer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->exoplayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    const-string v3, "defaultPlayer"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->defaultPlayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    const-string v5, "visualOn"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->visualOn:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;
    .locals 1

    .line 3
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    return-object v0
.end method
