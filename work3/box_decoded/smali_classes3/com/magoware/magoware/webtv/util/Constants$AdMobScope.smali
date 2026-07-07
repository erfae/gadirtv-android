.class public final enum Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdMobScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

.field public static final enum LIVE:Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

.field public static final enum NOVIDEO:Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

.field public static final enum VOD:Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    const-string v1, "VOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;->VOD:Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    new-instance v1, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    const-string v3, "LIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;->LIVE:Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    new-instance v3, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    const-string v5, "NOVIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;->NOVIDEO:Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 50
    sput-object v5, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;->$VALUES:[Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 50
    const-class v0, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;
    .locals 1

    .line 50
    sget-object v0, Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;->$VALUES:[Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/util/Constants$AdMobScope;

    return-object v0
.end method
