.class public Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;
.super Ljava/lang/Object;
.source "EPGUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EPGUtil"

.field private static final dtfShortTime:Lorg/joda/time/format/DateTimeFormatter;

.field private static picasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HH:mm"

    .line 20
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->dtfShortTime:Lorg/joda/time/format/DateTimeFormatter;

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->picasso:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEPGdayName(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateMillis"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/LocalDate;-><init>(J)V

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->dayOfWeek()Lorg/joda/time/LocalDate$Property;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/LocalDate$Property;->getAsShortText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortTime(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMillis"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->dtfShortTime:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0, p1}, Lorg/joda/time/format/DateTimeFormatter;->print(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeekdayName(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateMillis"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/LocalDate;-><init>(J)V

    .line 29
    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->dayOfWeek()Lorg/joda/time/LocalDate$Property;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate$Property;->getAsText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initPicasso(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->picasso:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/squareup/picasso/OkHttpDownloader;

    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v1}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p0

    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/-$$Lambda$EPGUtil$CsXdZD6c4jnLh4RLCuJfSNa8IXM;->INSTANCE:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/-$$Lambda$EPGUtil$CsXdZD6c4jnLh4RLCuJfSNa8IXM;

    .line 50
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso$Builder;->listener(Lcom/squareup/picasso/Picasso$Listener;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object p0

    sput-object p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->picasso:Lcom/squareup/picasso/Picasso;

    :cond_0
    return-void
.end method

.method static synthetic lambda$initPicasso$0(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    .line 50
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EPGUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loadImageInto(Landroid/content/Context;Ljava/lang/String;IILcom/squareup/picasso/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "url",
            "width",
            "height",
            "target"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->initPicasso(Landroid/content/Context;)V

    .line 40
    sget-object p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGUtil;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 43
    invoke-virtual {p0, p4}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method
