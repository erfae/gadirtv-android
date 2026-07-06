.class synthetic Liptv/m3u/parser/M3UParser$1;
.super Ljava/lang/Object;
.source "M3UParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liptv/m3u/parser/M3UParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$iptv$m3u$parser$M3UParser$Status:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Liptv/m3u/parser/M3UParser$Status;->values()[Liptv/m3u/parser/M3UParser$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Liptv/m3u/parser/M3UParser$1;->$SwitchMap$iptv$m3u$parser$M3UParser$Status:[I

    :try_start_0
    sget-object v1, Liptv/m3u/parser/M3UParser$Status;->READY:Liptv/m3u/parser/M3UParser$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Liptv/m3u/parser/M3UParser$1;->$SwitchMap$iptv$m3u$parser$M3UParser$Status:[I

    sget-object v1, Liptv/m3u/parser/M3UParser$Status;->READING_KEY:Liptv/m3u/parser/M3UParser$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Liptv/m3u/parser/M3UParser$1;->$SwitchMap$iptv$m3u$parser$M3UParser$Status:[I

    sget-object v1, Liptv/m3u/parser/M3UParser$Status;->KEY_READY:Liptv/m3u/parser/M3UParser$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Liptv/m3u/parser/M3UParser$1;->$SwitchMap$iptv$m3u$parser$M3UParser$Status:[I

    sget-object v1, Liptv/m3u/parser/M3UParser$Status;->READING_VALUE:Liptv/m3u/parser/M3UParser$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
