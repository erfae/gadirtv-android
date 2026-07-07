.class public final enum Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;
.super Ljava/lang/Enum;
.source "ProgramStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

.field public static final enum FUTURE:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

.field public static final enum LIVE:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

.field public static final enum PAST:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    const-string v1, "LIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;->LIVE:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    .line 5
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    const-string v3, "FUTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;->FUTURE:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    .line 6
    new-instance v3, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    const-string v5, "PAST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;->PAST:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;->$VALUES:[Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;
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
    const-class v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    return-object p0
.end method

.method public static values()[Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;->$VALUES:[Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    invoke-virtual {v0}, [Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ProgramStatus;

    return-object v0
.end method
