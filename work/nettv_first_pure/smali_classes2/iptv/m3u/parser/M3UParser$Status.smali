.class final enum Liptv/m3u/parser/M3UParser$Status;
.super Ljava/lang/Enum;
.source "M3UParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liptv/m3u/parser/M3UParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Liptv/m3u/parser/M3UParser$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Liptv/m3u/parser/M3UParser$Status;

.field public static final enum KEY_READY:Liptv/m3u/parser/M3UParser$Status;

.field public static final enum READING_KEY:Liptv/m3u/parser/M3UParser$Status;

.field public static final enum READING_VALUE:Liptv/m3u/parser/M3UParser$Status;

.field public static final enum READY:Liptv/m3u/parser/M3UParser$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Liptv/m3u/parser/M3UParser$Status;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Liptv/m3u/parser/M3UParser$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liptv/m3u/parser/M3UParser$Status;->READY:Liptv/m3u/parser/M3UParser$Status;

    new-instance v1, Liptv/m3u/parser/M3UParser$Status;

    const-string v3, "READING_KEY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liptv/m3u/parser/M3UParser$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Liptv/m3u/parser/M3UParser$Status;->READING_KEY:Liptv/m3u/parser/M3UParser$Status;

    new-instance v3, Liptv/m3u/parser/M3UParser$Status;

    const-string v5, "KEY_READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Liptv/m3u/parser/M3UParser$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Liptv/m3u/parser/M3UParser$Status;->KEY_READY:Liptv/m3u/parser/M3UParser$Status;

    new-instance v5, Liptv/m3u/parser/M3UParser$Status;

    const-string v7, "READING_VALUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Liptv/m3u/parser/M3UParser$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Liptv/m3u/parser/M3UParser$Status;->READING_VALUE:Liptv/m3u/parser/M3UParser$Status;

    const/4 v7, 0x4

    new-array v7, v7, [Liptv/m3u/parser/M3UParser$Status;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Liptv/m3u/parser/M3UParser$Status;->$VALUES:[Liptv/m3u/parser/M3UParser$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Liptv/m3u/parser/M3UParser$Status;
    .locals 1

    const-class v0, Liptv/m3u/parser/M3UParser$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Liptv/m3u/parser/M3UParser$Status;

    return-object p0
.end method

.method public static values()[Liptv/m3u/parser/M3UParser$Status;
    .locals 1

    sget-object v0, Liptv/m3u/parser/M3UParser$Status;->$VALUES:[Liptv/m3u/parser/M3UParser$Status;

    invoke-virtual {v0}, [Liptv/m3u/parser/M3UParser$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liptv/m3u/parser/M3UParser$Status;

    return-object v0
.end method
