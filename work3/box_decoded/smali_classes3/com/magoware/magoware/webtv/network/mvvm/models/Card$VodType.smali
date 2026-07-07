.class public final enum Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;
.super Ljava/lang/Enum;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

.field public static final enum ASSETS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

.field public static final enum FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

.field public static final enum TV_EPISODE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

.field public static final enum TV_SEASON:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

.field public static final enum TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 819
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    const-string v1, "FILM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    .line 820
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    const-string v3, "TV_EPISODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_EPISODE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    .line 821
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    const-string v5, "TV_SERIES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    .line 822
    new-instance v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    const-string v7, "TV_SEASON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SEASON:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    .line 823
    new-instance v7, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    const-string v9, "ASSETS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ASSETS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 818
    sput-object v9, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

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

    .line 818
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 818
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;
    .locals 1

    .line 818
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->$VALUES:[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    return-object v0
.end method
