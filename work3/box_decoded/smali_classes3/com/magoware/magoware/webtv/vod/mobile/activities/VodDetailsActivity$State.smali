.class final enum Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;
.super Ljava/lang/Enum;
.source "VodDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

.field public static final enum Buy:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

.field public static final enum ComingSoon:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

.field public static final enum Play:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 699
    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    const-string v1, "Play"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->Play:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    const-string v3, "Buy"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->Buy:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    new-instance v3, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    const-string v5, "ComingSoon"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->ComingSoon:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->$VALUES:[Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

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

    .line 699
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 699
    const-class v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;
    .locals 1

    .line 699
    sget-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->$VALUES:[Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity$State;

    return-object v0
.end method
