.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJIJ)J"
        }
    .end annotation

    if-ltz p6, :cond_0

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p7, p2

    .line 1
    invoke-static {p7, p8, p4, p5}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(JJ)J

    move-result-wide p6

    long-to-int p6, p6

    :goto_0
    const/4 p7, 0x0

    :goto_1
    if-ge p7, p6, :cond_1

    .line 2
    new-instance p8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {p8, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    .line 3
    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p2, p4

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_1
    return-wide p2
.end method

.method private static checkContentTypeConsistency(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return p0
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-object p0
.end method

.method private static fillInClearKeyInformation(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 3
    sget-object v3, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-void

    .line 5
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 7
    sget-object v3, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 8
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-direct {v3, v4, v2, v5, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->canReplace(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getFinalAvailabilityTimeOffset(JJ)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    const-wide p2, 0x7fffffffffffffffL

    cmp-long v2, p0, p2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method private static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const-string v0, "application/mp4"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "text/vtt"

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "application/x-mp4-vtt"

    :cond_4
    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private isDvbProfileDeclared([Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string/jumbo v4, "urn:dvb:dash:profile:dvb-dash:"

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "schemeIdUri"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string/jumbo v2, "value"

    .line 2
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    const-string v3, "id"

    .line 3
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 4
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method public static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public static parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 3
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string p2, "MPD"

    .line 5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method public final parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string/jumbo v2, "value"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 3
    :pswitch_0
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_7

    :cond_8
    const/16 v1, 0x10

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_7

    :cond_9
    :goto_2
    move v6, v0

    goto/16 :goto_7

    .line 5
    :pswitch_1
    invoke-static {p1, v2, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 6
    sget-object v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 7
    aget v6, v1, v0

    goto/16 :goto_7

    .line 8
    :pswitch_2
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 9
    :cond_a
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_3

    :sswitch_7
    const-string v1, "fa01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v3, 0x3

    goto :goto_4

    :sswitch_8
    const-string v1, "f801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v3, 0x2

    goto :goto_4

    :sswitch_9
    const-string v1, "a000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x1

    goto :goto_4

    :sswitch_a
    const-string v1, "4000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_3
    const/4 v3, -0x1

    :cond_e
    :goto_4
    if-eqz v3, :cond_11

    if-eq v3, v7, :cond_10

    if-eq v3, v8, :cond_12

    if-eq v3, v5, :cond_f

    :goto_5
    const/4 v4, -0x1

    goto :goto_6

    :cond_f
    const/16 v4, 0x8

    goto :goto_6

    :cond_10
    const/4 v4, 0x2

    goto :goto_6

    :cond_11
    const/4 v4, 0x1

    :cond_12
    :goto_6
    move v6, v4

    goto :goto_7

    .line 10
    :pswitch_3
    invoke-static {p1, v2, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    goto :goto_7

    .line 11
    :pswitch_4
    invoke-static {p1, v2, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_13

    const/16 v1, 0x21

    if-ge v0, v1, :cond_13

    goto :goto_2

    .line 12
    :cond_13
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x185d7c -> :sswitch_a
        0x2cd22f -> :sswitch_9
        0x2f3613 -> :sswitch_8
        0x2fcffc -> :sswitch_7
    .end sparse-switch
.end method

.method public final parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    const/4 v0, 0x0

    const-string v1, "availabilityTimeOffset"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    const-string p2, "INF"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 3
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const p2, 0x49742400    # 1000000.0f

    mul-float p1, p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method public final parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "dvb:priority"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    const-string v3, "dvb:weight"

    .line 3
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "serviceLocation"

    .line 5
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BaseURL"

    .line 6
    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/UriUtil;->isAbsolute(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    move-object v0, p1

    :cond_3
    new-array p2, v2, [Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 8
    new-instance p3, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-direct {p3, p1, v0, v1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p3, p2, v5

    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_7

    .line 11
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 12
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_5

    move-object v7, v6

    goto :goto_3

    :cond_5
    move-object v7, v0

    :goto_3
    if-eqz p3, :cond_6

    .line 13
    iget v1, v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    .line 14
    iget v3, v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    .line 15
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 16
    :cond_6
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-direct {v4, v6, v7, v1, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    return-object v2
.end method

.method public final parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string/jumbo v1, "value"

    .line 3
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "default_KID"

    .line 4
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValueIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "00000000-0000-0000-0000-000000000000"

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "\\s+"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8
    array-length v4, v3

    new-array v4, v4, [Ljava/util/UUID;

    const/4 v5, 0x0

    .line 9
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 10
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_4
    sget-object v3, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-static {v3, v4, v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v4

    move-object v5, v0

    goto :goto_5

    .line 12
    :pswitch_1
    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    goto :goto_2

    .line 13
    :pswitch_2
    sget-object v1, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    goto :goto_2

    .line 14
    :pswitch_3
    sget-object v1, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    :goto_2
    move-object v3, v1

    move-object v1, v0

    goto :goto_4

    :cond_5
    :goto_3
    move-object v1, v0

    :cond_6
    move-object v3, v0

    :goto_4
    move-object v4, v0

    move-object v5, v4

    .line 15
    :cond_7
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "clearkey:Laurl"

    .line 16
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v7, :cond_8

    .line 17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    :cond_8
    const-string v6, "ms:laurl"

    .line 18
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v5, "licenseUrl"

    .line 19
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    if-nez v4, :cond_b

    const-string v6, "pssh"

    .line 20
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTagIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v7, :cond_b

    .line 22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v3, "MpdParser"

    const-string v6, "Skipping malformed cenc:pssh data"

    .line 24
    invoke-static {v3, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    move-object v4, v0

    goto :goto_6

    :cond_a
    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_6

    :cond_b
    if-nez v4, :cond_c

    .line 25
    sget-object v6, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 26
    invoke-virtual {v6, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "mspr:pro"

    .line 27
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 30
    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v4

    goto :goto_6

    .line 31
    :cond_c
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    const-string v6, "ContentProtection"

    .line 32
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_d

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo p1, "video/mp4"

    invoke-direct {v0, v3, v5, p1, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 34
    :cond_d
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "video"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "text"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "image"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public final parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 144
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "profiles"

    .line 1
    invoke-interface {v15, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 2
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-direct {v14, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->isDvbProfileDeclared([Ljava/lang/String;)Z

    move-result v13

    const-string v1, "availabilityStartTime"

    .line 4
    invoke-interface {v15, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    move-wide/from16 v16, v3

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v5

    move-wide/from16 v16, v5

    :goto_1
    const-string v1, "mediaPresentationDuration"

    .line 6
    invoke-static {v15, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    const-string v1, "minBufferTime"

    .line 7
    invoke-static {v15, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    const-string/jumbo v1, "type"

    .line 8
    invoke-interface {v15, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "dynamic"

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v1, "minimumUpdatePeriod"

    .line 10
    invoke-static {v15, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide/from16 v23, v5

    goto :goto_2

    :cond_2
    move-wide/from16 v23, v3

    :goto_2
    if-eqz v22, :cond_3

    const-string/jumbo v1, "timeShiftBufferDepth"

    .line 11
    invoke-static {v15, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide/from16 v25, v5

    goto :goto_3

    :cond_3
    move-wide/from16 v25, v3

    :goto_3
    if-eqz v22, :cond_4

    const-string/jumbo v1, "suggestedPresentationDelay"

    .line 12
    invoke-static {v15, v1, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    move-wide/from16 v27, v5

    goto :goto_4

    :cond_4
    move-wide/from16 v27, v3

    :goto_4
    const-string v1, "publishTime"

    .line 13
    invoke-interface {v15, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-wide/from16 v29, v3

    goto :goto_5

    .line 14
    :cond_5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v5

    move-wide/from16 v29, v5

    :goto_5
    if-eqz v22, :cond_6

    const-wide/16 v5, 0x0

    goto :goto_6

    :cond_6
    move-wide v5, v3

    .line 15
    :goto_6
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v13, :cond_7

    const/4 v10, 0x1

    goto :goto_7

    :cond_7
    const/high16 v10, -0x80000000

    .line 18
    :goto_7
    invoke-direct {v1, v7, v8, v10, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-array v7, v9, [Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    aput-object v1, v7, v0

    .line 19
    invoke-static {v7}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    .line 20
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v22, :cond_8

    goto :goto_8

    :cond_8
    const-wide/16 v3, 0x0

    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v33, v2

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-wide v7, v3

    move-object v0, v14

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 22
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v10, "BaseURL"

    .line 23
    invoke-static {v15, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v31, :cond_9

    .line 24
    invoke-virtual {v0, v15, v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    const/16 v31, 0x1

    .line 25
    :cond_9
    invoke-virtual {v0, v15, v11, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c

    :cond_a
    const-string v1, "ProgramInformation"

    .line 26
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "lang"

    if-eqz v2, :cond_11

    const-string v2, "moreInformationURL"

    const/4 v4, 0x0

    .line 27
    invoke-interface {v15, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v41, v4

    goto :goto_a

    :cond_b
    move-object/from16 v41, v2

    .line 28
    :goto_a
    invoke-interface {v15, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :cond_c
    move-object/from16 v42, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 29
    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v10, "Title"

    .line 30
    invoke-static {v15, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 31
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_e
    const-string v10, "Source"

    .line 32
    invoke-static {v15, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 33
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_f
    const-string v10, "Copyright"

    .line 34
    invoke-static {v15, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 35
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 36
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 37
    :goto_b
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 38
    new-instance v33, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;

    move-object/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    invoke-direct/range {v37 .. v42}, Lcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_11
    const-string v1, "UTCTiming"

    .line 39
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v4, "value"

    const-string/jumbo v2, "schemeIdUri"

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 40
    invoke-interface {v15, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-interface {v15, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v3, v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v43, v0

    move-object/from16 v36, v3

    goto/16 :goto_11

    :cond_12
    const-string v1, "Location"

    .line 43
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    :goto_c
    move-object/from16 v43, v0

    goto/16 :goto_11

    :cond_13
    const-string v1, "ServiceDescription"

    .line 45
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_19

    const v2, -0x800001

    const v3, -0x800001

    const-wide v37, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    :goto_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v4, "Latency"

    .line 47
    invoke-static {v15, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    const-string v10, "max"

    move-object/from16 v43, v0

    const-string v0, "min"

    if-eqz v4, :cond_14

    const-string/jumbo v4, "target"

    move/from16 v35, v2

    move/from16 v44, v3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    invoke-static {v15, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v37

    .line 49
    invoke-static {v15, v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v39

    .line 50
    invoke-static {v15, v10, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    move-wide/from16 v49, v2

    move/from16 v51, v35

    move-wide/from16 v45, v37

    move-wide/from16 v47, v39

    move/from16 v52, v44

    goto :goto_10

    :cond_14
    move/from16 v35, v2

    move/from16 v44, v3

    const-string v2, "PlaybackRate"

    .line 51
    invoke-static {v15, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    .line 52
    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const v0, -0x800001

    goto :goto_e

    .line 53
    :cond_15
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 54
    :goto_e
    invoke-interface {v15, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    const v2, -0x800001

    move/from16 v51, v0

    move-wide/from16 v45, v37

    move-wide/from16 v47, v39

    move-wide/from16 v49, v41

    const v52, -0x800001

    goto :goto_10

    .line 55
    :cond_16
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move v2, v0

    goto :goto_f

    :cond_17
    move/from16 v2, v35

    move/from16 v3, v44

    :goto_f
    move/from16 v51, v2

    move/from16 v52, v3

    move-wide/from16 v45, v37

    move-wide/from16 v47, v39

    move-wide/from16 v49, v41

    .line 56
    :goto_10
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v52}, Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;-><init>(JJJFF)V

    move-object/from16 v35, v0

    :goto_11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v69, v5

    move-object/from16 v75, v9

    move-object/from16 v53, v11

    move-object v6, v12

    move/from16 v76, v13

    goto/16 :goto_57

    :cond_18
    move-object/from16 v0, v43

    move-wide/from16 v37, v45

    move-wide/from16 v39, v47

    move-wide/from16 v41, v49

    move/from16 v2, v51

    move/from16 v3, v52

    goto/16 :goto_d

    :cond_19
    move-object/from16 v43, v0

    const-string v1, "Period"

    .line 58
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    if-nez v32, :cond_85

    .line 59
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v9

    goto :goto_12

    :cond_1a
    move-object v0, v11

    :goto_12
    const-string v14, "id"

    move-object/from16 v37, v1

    const/4 v1, 0x0

    .line 60
    invoke-interface {v15, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v1, "start"

    .line 61
    invoke-static {v15, v1, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v40

    move-object/from16 v38, v2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v42, v16, v1

    if-eqz v42, :cond_1b

    add-long v42, v16, v40

    move-wide/from16 v44, v42

    goto :goto_13

    :cond_1b
    move-wide/from16 v44, v1

    :goto_13
    move-object/from16 v42, v11

    const-string v11, "duration"

    .line 62
    invoke-static {v15, v11, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v46

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v43, 0x0

    const/16 v48, 0x0

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v51, 0x0

    move-object/from16 v55, v1

    move-object/from16 v52, v2

    move-object/from16 v54, v11

    move-object/from16 v53, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v11, v5

    .line 66
    :goto_14
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 67
    invoke-static {v2, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_1d

    if-nez v51, :cond_1c

    .line 68
    invoke-virtual {v1, v2, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v11

    const/16 v51, 0x1

    :cond_1c
    move-object/from16 v56, v4

    .line 69
    invoke-virtual {v1, v2, v0, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-wide v57, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v99, v0

    move-wide/from16 v69, v5

    move-wide/from16 v132, v7

    move-object/from16 v75, v9

    move-object/from16 v101, v10

    move/from16 v76, v13

    move-object/from16 v0, v43

    move-object/from16 v60, v52

    move-object/from16 v135, v54

    move-object/from16 v52, v3

    move-object/from16 v3, v37

    move-object/from16 v54, v53

    move-object/from16 v37, v14

    move-object/from16 v53, v42

    move-object/from16 v42, v15

    move-object/from16 v15, v55

    move-object/from16 v55, v38

    move-object/from16 v38, v56

    goto/16 :goto_53

    :cond_1d
    move-object/from16 v56, v4

    const-string v4, "AdaptationSet"

    .line 70
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v57

    move-wide/from16 v58, v11

    const-string v11, "SegmentTemplate"

    const-string v12, "SegmentList"

    move-object/from16 v60, v11

    const-string v11, "SegmentBase"

    if-eqz v57, :cond_72

    .line 71
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v57

    move-object/from16 v61, v0

    if-nez v57, :cond_1e

    move-object/from16 v57, v15

    goto :goto_15

    :cond_1e
    move-object/from16 v57, v15

    move-object/from16 v15, v61

    :goto_15
    const/4 v0, -0x1

    .line 72
    invoke-static {v2, v14, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v63

    .line 73
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    move-object/from16 v62, v9

    const-string v9, "mimeType"

    move/from16 v64, v0

    const/4 v0, 0x0

    .line 74
    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    move-wide/from16 v66, v7

    const-string v7, "codecs"

    .line 75
    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const-string/jumbo v8, "width"

    const/4 v0, -0x1

    move-wide/from16 v69, v5

    .line 76
    invoke-static {v2, v8, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "height"

    .line 77
    invoke-static {v2, v6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v71, v1

    const/high16 v1, -0x40800000    # -1.0f

    .line 78
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v1

    move-object/from16 v72, v4

    const-string v4, "audioSamplingRate"

    move-object/from16 v73, v12

    const/4 v12, -0x1

    .line 79
    invoke-static {v2, v4, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v74, v11

    const/4 v11, 0x0

    .line 80
    invoke-interface {v2, v11, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    move-object/from16 v76, v4

    const-string v4, "label"

    .line 81
    invoke-interface {v2, v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v77, v4

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v78, v2

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v79, v12

    .line 86
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move/from16 v80, v1

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v81, v0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v82, v0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v83, -0x1

    const/16 v84, 0x0

    const/16 v85, 0x0

    move-object/from16 v88, v1

    move-object/from16 v87, v2

    move-object/from16 v86, v6

    move-object/from16 v91, v48

    move-wide/from16 v89, v49

    move-wide/from16 v1, v58

    move/from16 v6, v64

    move/from16 v64, v5

    move-object/from16 v5, v71

    move-object/from16 v71, v8

    move-object/from16 v8, v75

    move-object/from16 v75, v7

    move-object/from16 v7, p1

    .line 90
    :goto_16
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 91
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v92

    if-eqz v92, :cond_20

    if-nez v85, :cond_1f

    .line 92
    invoke-virtual {v5, v7, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v1

    const/16 v85, 0x1

    .line 93
    :cond_1f
    invoke-virtual {v5, v7, v15, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v92, v15

    goto :goto_17

    :cond_20
    move-object/from16 v92, v15

    const-string v15, "ContentProtection"

    .line 94
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v93

    if-eqz v93, :cond_22

    .line 95
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v5

    .line 96
    iget-object v15, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v15, :cond_21

    .line 97
    move-object/from16 v84, v15

    check-cast v84, Ljava/lang/String;

    .line 98
    :cond_21
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_23

    .line 99
    check-cast v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_22
    move-wide/from16 v93, v1

    const-string v1, "ContentComponent"

    .line 100
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    .line 101
    invoke-interface {v7, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v6

    move-wide/from16 v1, v93

    :cond_23
    :goto_17
    move-wide/from16 v93, v1

    move-object/from16 v2, v87

    goto :goto_18

    :cond_24
    const-string v1, "Role"

    .line 103
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 104
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    move-object/from16 v2, v87

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_25
    move-object/from16 v2, v87

    const-string v1, "AudioChannelConfiguration"

    .line 105
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v87

    if-eqz v87, :cond_26

    .line 106
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v83

    :goto_18
    move-object/from16 v15, p1

    move-object/from16 v101, v10

    move-object/from16 v138, v11

    move-object/from16 v103, v14

    move-object/from16 v123, v37

    move-object/from16 v125, v38

    move-object/from16 v126, v52

    move-object/from16 v135, v54

    move-object/from16 v124, v55

    move-object/from16 v127, v56

    move-object/from16 v141, v60

    move-object/from16 v99, v61

    move-wide/from16 v132, v66

    move-object/from16 v66, v71

    move-object/from16 v136, v73

    move-object/from16 v14, v74

    move-object/from16 v56, v76

    move/from16 v60, v79

    move/from16 v37, v80

    move/from16 v74, v81

    move-object/from16 v55, v88

    move-object/from16 v67, v2

    move-object/from16 v52, v3

    move-object/from16 v38, v4

    move-object/from16 v61, v12

    move/from16 v76, v13

    move-object/from16 v54, v53

    move/from16 v71, v64

    move-object/from16 v4, v72

    move-object/from16 v64, v75

    move-object/from16 v3, v77

    move-object/from16 v72, v82

    move-object/from16 v77, v86

    move-wide/from16 v1, v93

    move-object/from16 v82, v0

    move-object/from16 v53, v42

    move-object/from16 v42, v57

    move-object/from16 v75, v62

    move-object/from16 v0, v78

    move-object/from16 v62, v9

    goto/16 :goto_44

    :cond_26
    move-object/from16 v87, v2

    const-string v2, "Accessibility"

    .line 107
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_27

    .line 108
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_27
    const-string v2, "EssentialProperty"

    .line 109
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_28

    .line 110
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    move-object/from16 v2, v88

    goto :goto_1a

    :cond_28
    move-object/from16 v95, v15

    const-string v15, "SupplementalProperty"

    .line 111
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v96

    if-eqz v96, :cond_29

    .line 112
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v1

    move-object/from16 v2, v88

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    move-object/from16 v15, p1

    move-object/from16 v101, v10

    move-object/from16 v138, v11

    move-object/from16 v103, v14

    move-object/from16 v123, v37

    move-object/from16 v125, v38

    move-object/from16 v126, v52

    move-object/from16 v135, v54

    move-object/from16 v124, v55

    move-object/from16 v127, v56

    move-object/from16 v141, v60

    move-object/from16 v99, v61

    move-wide/from16 v132, v66

    move-object/from16 v66, v71

    move-object/from16 v128, v72

    move-object/from16 v136, v73

    move-object/from16 v14, v74

    move-object/from16 v56, v76

    move/from16 v60, v79

    move/from16 v37, v80

    move/from16 v74, v81

    move-object/from16 v72, v82

    move-object/from16 v67, v87

    move-object/from16 v82, v0

    move-object/from16 v55, v2

    move-object/from16 v52, v3

    move-object/from16 v38, v4

    move/from16 v73, v6

    move-object/from16 v61, v12

    move/from16 v76, v13

    move-object/from16 v54, v53

    move/from16 v71, v64

    move-object/from16 v64, v75

    move-object/from16 v3, v77

    move-object/from16 v77, v86

    move-wide/from16 v1, v89

    move-object/from16 v53, v42

    move-object/from16 v42, v57

    move-object/from16 v75, v62

    move-object/from16 v57, v8

    move-object/from16 v62, v9

    goto/16 :goto_42

    :cond_29
    move-object/from16 v96, v15

    move-object/from16 v142, v88

    move-object/from16 v88, v2

    move-object/from16 v2, v142

    const-string v15, "Representation"

    .line 113
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v97

    move-object/from16 v98, v15

    const-string v15, "InbandEventStream"

    if-eqz v97, :cond_66

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v97

    if-nez v97, :cond_2a

    const/16 v97, 0x0

    move-object/from16 v99, v0

    move-object/from16 v100, v11

    move-object/from16 v0, v97

    move-object/from16 v97, v15

    move-object/from16 v15, v99

    goto :goto_1b

    :cond_2a
    const/16 v97, 0x0

    move-object/from16 v99, v0

    move-object/from16 v100, v11

    move-object/from16 v0, v97

    move-object/from16 v97, v15

    move-object/from16 v15, v92

    .line 115
    :goto_1b
    invoke-interface {v7, v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v101, v3

    const-string v3, "bandwidth"

    move-object/from16 v102, v4

    const/4 v4, -0x1

    .line 116
    invoke-static {v7, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 117
    invoke-interface {v7, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2b

    move-object/from16 v4, v65

    :cond_2b
    move-object/from16 v142, v75

    move-object/from16 v75, v8

    move-object/from16 v8, v142

    .line 118
    invoke-interface {v7, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v103, v14

    if-nez v0, :cond_2c

    move-object/from16 v0, v68

    :cond_2c
    move-object/from16 v142, v71

    move/from16 v71, v6

    move/from16 v6, v64

    move-object/from16 v64, v8

    move-object/from16 v8, v142

    .line 119
    invoke-static {v7, v8, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    move/from16 v104, v6

    move-object/from16 v6, v86

    move/from16 v86, v14

    move/from16 v142, v81

    move-object/from16 v81, v0

    move/from16 v0, v142

    .line 120
    invoke-static {v7, v6, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    move/from16 v105, v3

    move/from16 v3, v80

    move/from16 v80, v14

    .line 121
    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v14

    move/from16 v106, v3

    move-object/from16 v3, v76

    move-object/from16 v76, v11

    move/from16 v11, v79

    move/from16 v79, v14

    .line 122
    invoke-static {v7, v3, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    move/from16 v107, v14

    .line 123
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v112, v14

    .line 124
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v113, v14

    .line 125
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v114, v14

    .line 126
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v115, v14

    .line 127
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v108, 0x0

    const/16 v109, 0x0

    move-object/from16 v117, v2

    move-object/from16 v118, v3

    move/from16 v111, v11

    move-object/from16 v110, v12

    move/from16 v119, v83

    move-wide/from16 v2, v89

    move-object/from16 v116, v91

    move-wide/from16 v11, v93

    .line 128
    :goto_1c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 129
    invoke-static {v7, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v120

    if-eqz v120, :cond_2e

    if-nez v109, :cond_2d

    .line 130
    invoke-virtual {v5, v7, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v11

    const/16 v109, 0x1

    :cond_2d
    move/from16 v120, v0

    .line 131
    invoke-virtual {v5, v7, v15, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1d

    :cond_2e
    move/from16 v120, v0

    .line 132
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 133
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v119

    goto :goto_1d

    :cond_2f
    move-object/from16 v0, v74

    .line 134
    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v74

    if-eqz v74, :cond_30

    move-object/from16 v74, v0

    .line 135
    move-object/from16 v0, v116

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v116

    :goto_1d
    const/4 v0, 0x0

    move-object/from16 v123, v37

    move-object/from16 v125, v38

    move-object/from16 v126, v52

    move-object/from16 v135, v54

    move-object/from16 v124, v55

    move-object/from16 v127, v56

    move-object/from16 v140, v60

    move-wide/from16 v132, v66

    move/from16 v131, v71

    move-object/from16 v128, v72

    move-object/from16 v136, v73

    move-object/from16 v137, v74

    move-object/from16 v134, v75

    move-object/from16 v139, v76

    move-object/from16 v129, v77

    move-object/from16 v130, v81

    move-object/from16 v38, v82

    move-object/from16 v82, v99

    move-object/from16 v138, v100

    move-object/from16 v52, v101

    move/from16 v71, v104

    move/from16 v37, v106

    move/from16 v60, v111

    move-object/from16 v55, v117

    move-object/from16 v56, v118

    move/from16 v74, v120

    move-object/from16 v106, v1

    move-object/from16 v77, v6

    move-object/from16 v66, v8

    move-object/from16 v101, v10

    move/from16 v76, v13

    move-object/from16 v72, v14

    move-object/from16 v81, v15

    move-object/from16 v54, v53

    move-object/from16 v99, v61

    move-object/from16 v75, v62

    move-object/from16 v6, v88

    move-object/from16 v1, v95

    move-object/from16 v8, v96

    move-object/from16 v13, v98

    move-object/from16 v10, v108

    move-object/from16 v61, v110

    move-object/from16 v88, v4

    move-object v14, v5

    move-object v15, v7

    move-object/from16 v62, v9

    move-wide/from16 v110, v11

    move-object/from16 v53, v42

    move-object/from16 v4, v97

    move-object/from16 v5, v112

    :goto_1e
    move-object/from16 v7, v113

    move-object/from16 v9, v114

    move-object/from16 v11, v115

    :goto_1f
    move/from16 v12, v119

    goto/16 :goto_24

    :cond_30
    move-object/from16 v74, v0

    move-object/from16 v0, v73

    .line 136
    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v73

    if-eqz v73, :cond_31

    .line 137
    invoke-virtual {v5, v7, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v121

    .line 138
    move-object/from16 v2, v116

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v73, v74

    move-object/from16 v3, v81

    move/from16 v74, v120

    move-object/from16 v81, v15

    move-object/from16 v15, v82

    move-object/from16 v82, v99

    move-object/from16 v99, v61

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v123, v37

    move-object/from16 v124, v55

    move/from16 v37, v106

    move-object/from16 v55, v117

    move-object/from16 v106, v1

    move-object/from16 v1, p1

    move-object/from16 v125, v38

    move-object/from16 v126, v52

    move-object/from16 v38, v15

    move-object/from16 v15, v88

    move-object/from16 v130, v3

    move-object/from16 v127, v56

    move-object/from16 v128, v72

    move-object/from16 v129, v77

    move-object/from16 v52, v101

    move-object/from16 v56, v118

    move-object/from16 v72, v14

    move-object v14, v4

    move-wide/from16 v3, v44

    move-object/from16 v77, v6

    move-object/from16 v88, v14

    move/from16 v131, v71

    move/from16 v71, v104

    move-object v14, v5

    move-wide/from16 v5, v46

    move-wide/from16 v132, v66

    move-object/from16 v134, v75

    move-object/from16 v66, v8

    move-object/from16 v67, v15

    move-object v15, v7

    move-wide v7, v11

    move-object/from16 v101, v10

    move-object/from16 v75, v62

    move-object/from16 v62, v9

    move-wide/from16 v9, v121

    move-object/from16 v135, v54

    move-object/from16 v136, v61

    move-object/from16 v137, v73

    move-object/from16 v139, v76

    move-object/from16 v138, v100

    move-object/from16 v61, v110

    move-object/from16 v54, v53

    move-object/from16 v53, v42

    move/from16 v42, v13

    move-object/from16 v13, v60

    move/from16 v60, v111

    move-wide/from16 v110, v11

    move-wide/from16 v11, v25

    .line 139
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v116, v0

    move-object/from16 v140, v13

    move/from16 v76, v42

    move-wide/from16 v2, v121

    goto/16 :goto_20

    :cond_31
    move-object/from16 v136, v0

    move-object/from16 v123, v37

    move-object/from16 v125, v38

    move-object/from16 v126, v52

    move-object/from16 v135, v54

    move-object/from16 v124, v55

    move-object/from16 v127, v56

    move-wide/from16 v132, v66

    move/from16 v131, v71

    move-object/from16 v128, v72

    move-object/from16 v137, v74

    move-object/from16 v134, v75

    move-object/from16 v139, v76

    move-object/from16 v129, v77

    move-object/from16 v130, v81

    move-object/from16 v38, v82

    move-object/from16 v67, v88

    move-object/from16 v82, v99

    move-object/from16 v138, v100

    move-object/from16 v52, v101

    move/from16 v71, v104

    move/from16 v37, v106

    move-object/from16 v55, v117

    move-object/from16 v56, v118

    move/from16 v74, v120

    move-object/from16 v106, v1

    move-object/from16 v88, v4

    move-object/from16 v77, v6

    move-object/from16 v66, v8

    move-object/from16 v101, v10

    move-object/from16 v72, v14

    move-object/from16 v81, v15

    move-object/from16 v54, v53

    move-object/from16 v99, v61

    move-object/from16 v75, v62

    move-object/from16 v61, v110

    move-object v14, v5

    move-object v15, v7

    move-object/from16 v62, v9

    move-object/from16 v53, v42

    move/from16 v42, v13

    move-object/from16 v13, v60

    move/from16 v60, v111

    move-wide/from16 v110, v11

    .line 140
    invoke-static {v15, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 141
    invoke-virtual {v14, v15, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v117

    .line 142
    move-object/from16 v2, v116

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    const/16 v73, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v55

    move-wide/from16 v4, v44

    move-wide/from16 v6, v46

    move-wide/from16 v8, v110

    move-wide/from16 v10, v117

    move-object/from16 v140, v13

    move/from16 v76, v42

    move-wide/from16 v12, v25

    .line 143
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object/from16 v116, v0

    move-wide/from16 v2, v117

    const/4 v1, 0x0

    :goto_20
    move v0, v1

    move-object/from16 v1, v95

    :cond_32
    move-object/from16 v5, v112

    goto :goto_21

    :cond_33
    move-object/from16 v140, v13

    move/from16 v76, v42

    const/4 v0, 0x0

    move-object/from16 v1, v95

    .line 144
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 145
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v4

    .line 146
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_34

    .line 147
    move-object/from16 v108, v5

    check-cast v108, Ljava/lang/String;

    .line 148
    :cond_34
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_32

    .line 149
    check-cast v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-object/from16 v5, v112

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    move-object/from16 v6, v67

    move-object/from16 v8, v96

    move-object/from16 v4, v97

    move-object/from16 v13, v98

    move-object/from16 v10, v108

    goto/16 :goto_1e

    :cond_35
    move-object/from16 v4, v97

    move-object/from16 v5, v112

    .line 150
    invoke-static {v15, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 151
    invoke-static {v15, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v6

    move-object/from16 v7, v113

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v67

    move-object/from16 v9, v114

    goto :goto_22

    :cond_36
    move-object/from16 v6, v67

    move-object/from16 v7, v113

    .line 152
    invoke-static {v15, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 153
    invoke-static {v15, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v8

    move-object/from16 v9, v114

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    move-object/from16 v8, v96

    move-object/from16 v11, v115

    goto :goto_23

    :cond_37
    move-object/from16 v8, v96

    move-object/from16 v9, v114

    .line 154
    invoke-static {v15, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 155
    invoke-static {v15, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v10

    move-object/from16 v11, v115

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_38
    move-object/from16 v11, v115

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_23
    move-object/from16 v13, v98

    move-object/from16 v10, v108

    goto/16 :goto_1f

    .line 157
    :goto_24
    invoke-static {v15, v13}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_65

    move-object/from16 v15, v88

    move-object/from16 v1, v130

    .line 158
    invoke-static {v15, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/eac3"

    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "ec+3"

    if-eqz v4, :cond_3d

    const/4 v2, 0x0

    .line 160
    :goto_25
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v8, "audio/eac3-joc"

    if-ge v2, v4, :cond_3c

    .line 161
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 162
    iget-object v13, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    move-object/from16 v130, v1

    const-string/jumbo v1, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 163
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    move-object/from16 v42, v3

    const-string v3, "JOC"

    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_26

    :cond_39
    move-object/from16 v42, v3

    :goto_26
    const-string/jumbo v1, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 165
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 166
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_3a
    move-object v2, v8

    goto :goto_27

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v42

    move-object/from16 v1, v130

    goto :goto_25

    :cond_3c
    move-object/from16 v130, v1

    move-object/from16 v42, v3

    move-object/from16 v2, v42

    .line 167
    :goto_27
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_28

    :cond_3d
    move-object/from16 v130, v1

    :cond_3e
    move-object/from16 v6, v130

    :goto_28
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 168
    :goto_29
    invoke-virtual/range {v87 .. v87}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string/jumbo v8, "urn:mpeg:dash:role:2011"

    if-ge v3, v4, :cond_42

    move-object/from16 v4, v87

    .line 169
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-object/from16 v113, v7

    .line 170
    iget-object v7, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 171
    iget-object v7, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-nez v7, :cond_3f

    goto :goto_2a

    :cond_3f
    const-string v8, "forced_subtitle"

    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    const-string v8, "forced-subtitle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    :goto_2a
    const/4 v7, 0x0

    goto :goto_2b

    :cond_40
    const/4 v7, 0x2

    :goto_2b
    or-int/2addr v1, v7

    :cond_41
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v87, v4

    move-object/from16 v7, v113

    goto :goto_29

    :cond_42
    move-object/from16 v113, v7

    move-object/from16 v4, v87

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 173
    :goto_2c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_44

    .line 174
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-object/from16 v87, v4

    .line 175
    iget-object v4, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 176
    iget-object v4, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    :cond_43
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v87

    goto :goto_2c

    :cond_44
    move-object/from16 v87, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 177
    :goto_2d
    invoke-virtual/range {v102 .. v102}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_52

    move-object/from16 v13, v102

    .line 178
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v112, v5

    move-object/from16 v5, v42

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-object/from16 v42, v10

    .line 179
    iget-object v10, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 180
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v67, v8

    goto/16 :goto_32

    .line 181
    :cond_45
    iget-object v10, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    move-object/from16 v67, v8

    const-string/jumbo v8, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    invoke-static {v8, v10}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 182
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-nez v5, :cond_46

    goto :goto_30

    .line 183
    :cond_46
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x3

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_2e

    :pswitch_1
    const-string v8, "6"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_2e

    :cond_47
    const/4 v5, 0x4

    goto :goto_2f

    :pswitch_2
    const-string v8, "4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    goto :goto_2e

    :cond_48
    const/4 v5, 0x3

    goto :goto_2f

    :pswitch_3
    const-string v8, "3"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_2e

    :cond_49
    const/4 v5, 0x2

    goto :goto_2f

    :pswitch_4
    const-string v8, "2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto :goto_2e

    :cond_4a
    const/4 v5, 0x1

    goto :goto_2f

    :pswitch_5
    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_2e

    :cond_4b
    const/4 v5, 0x0

    goto :goto_2f

    :goto_2e
    const/4 v5, -0x1

    :goto_2f
    if-eqz v5, :cond_50

    const/4 v8, 0x1

    if-eq v5, v8, :cond_4f

    const/4 v8, 0x2

    if-eq v5, v8, :cond_4e

    if-eq v5, v10, :cond_4d

    const/4 v8, 0x4

    if-eq v5, v8, :cond_4c

    :goto_30
    const/4 v5, 0x0

    goto :goto_31

    :cond_4c
    const/4 v5, 0x1

    goto :goto_31

    :cond_4d
    const/16 v5, 0x8

    goto :goto_31

    :cond_4e
    const/4 v5, 0x4

    goto :goto_31

    :cond_4f
    const/16 v5, 0x800

    goto :goto_31

    :cond_50
    const/16 v5, 0x200

    :goto_31
    or-int/2addr v4, v5

    :cond_51
    :goto_32
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v102, v13

    move-object/from16 v10, v42

    move-object/from16 v8, v67

    move-object/from16 v5, v112

    goto/16 :goto_2d

    :cond_52
    move-object/from16 v112, v5

    move-object/from16 v42, v10

    move-object/from16 v13, v102

    or-int/2addr v3, v4

    .line 184
    invoke-virtual {v14, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v4

    or-int/2addr v3, v4

    .line 185
    invoke-virtual {v14, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, 0x0

    .line 186
    :goto_33
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_56

    .line 187
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 188
    iget-object v7, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v8, "http://dashif.org/thumbnail_tile"

    invoke-static {v8, v7}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_53

    iget-object v7, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v8, "http://dashif.org/guidelines/thumbnail_tile"

    .line 189
    invoke-static {v8, v7}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_55

    :cond_53
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v5, :cond_55

    const-string/jumbo v7, "x"

    .line 190
    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 191
    array-length v7, v5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_54

    goto :goto_34

    .line 192
    :cond_54
    :try_start_0
    aget-object v7, v5, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 193
    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_35

    :catch_0
    :cond_55
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_56
    const/4 v0, 0x0

    .line 195
    :goto_35
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    move-object/from16 v5, v139

    .line 196
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 197
    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 198
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 199
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    move/from16 v7, v105

    .line 200
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    move-object/from16 v10, v134

    .line 203
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    if-eqz v0, :cond_57

    .line 204
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_36

    :cond_57
    const/4 v3, -0x1

    :goto_36
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setTileCountHorizontal(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    if-eqz v0, :cond_58

    .line 205
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_37

    :cond_58
    const/4 v0, -0x1

    :goto_37
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setTileCountVertical(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 206
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    move/from16 v1, v86

    .line 207
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    move/from16 v3, v80

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    move/from16 v2, v79

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    goto/16 :goto_3b

    :cond_59
    move/from16 v3, v80

    move/from16 v1, v86

    .line 208
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 209
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    move/from16 v2, v107

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    goto/16 :goto_3b

    .line 210
    :cond_5a
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    const-string v1, "application/cea-608"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "MpdParser"

    if-eqz v1, :cond_5d

    const/4 v1, 0x0

    .line 212
    :goto_38
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 213
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 214
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v5, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v4, :cond_5c

    .line 215
    sget-object v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5b

    const/4 v1, 0x1

    .line 217
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3a

    :cond_5b
    const-string v4, "Unable to parse CEA-608 channel number from: "

    .line 218
    invoke-static {v4}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 219
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_5d
    const-string v1, "application/cea-708"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x0

    .line 221
    :goto_39
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 222
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 223
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v5, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v4, :cond_5f

    .line 224
    sget-object v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5e

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3a

    :cond_5e
    const-string v4, "Unable to parse CEA-708 service block number from: "

    .line 227
    invoke-static {v4}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_60
    const/4 v1, -0x1

    .line 229
    :goto_3a
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_3b

    .line 230
    :cond_61
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 232
    :cond_62
    :goto_3b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v108

    if-eqz v116, :cond_63

    move-object/from16 v110, v116

    goto :goto_3c

    .line 233
    :cond_63
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    move-object/from16 v110, v0

    .line 234
    :goto_3c
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 235
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    move-object/from16 v109, v72

    goto :goto_3d

    :cond_64
    move-object/from16 v109, v81

    :goto_3d
    const-wide/16 v116, -0x1

    move-object/from16 v107, v0

    move-object/from16 v111, v42

    move-object/from16 v114, v9

    move-object/from16 v115, v11

    invoke-direct/range {v107 .. v117}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    .line 236
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 237
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    move/from16 v2, v131

    .line 238
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v1

    move-object/from16 v2, v38

    .line 239
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p1

    move v6, v1

    move-object/from16 v72, v2

    move-object/from16 v38, v13

    move-object/from16 v42, v57

    move-object/from16 v67, v87

    move-object/from16 v14, v137

    move-object/from16 v141, v140

    move-object/from16 v57, v10

    goto/16 :goto_40

    :cond_65
    move-object/from16 v95, v1

    move-object/from16 v112, v5

    move-object/from16 v113, v7

    move-object/from16 v42, v10

    move/from16 v1, v86

    move/from16 v142, v80

    move/from16 v80, v79

    move/from16 v79, v142

    move-object/from16 v7, p1

    move-object/from16 v97, v4

    move-object/from16 v96, v8

    move-object/from16 v114, v9

    move-object/from16 v115, v11

    move/from16 v119, v12

    move-object/from16 v98, v13

    move-object v5, v14

    move-object/from16 v108, v42

    move-object/from16 v42, v53

    move-object/from16 v53, v54

    move-object/from16 v117, v55

    move-object/from16 v118, v56

    move-object/from16 v9, v62

    move-object/from16 v8, v66

    move/from16 v104, v71

    move-object/from16 v14, v72

    move/from16 v0, v74

    move-object/from16 v62, v75

    move/from16 v13, v76

    move-object/from16 v15, v81

    move-object/from16 v4, v88

    move-object/from16 v10, v101

    move-object/from16 v1, v106

    move-wide/from16 v11, v110

    move-object/from16 v55, v124

    move-object/from16 v56, v127

    move-object/from16 v72, v128

    move-object/from16 v81, v130

    move/from16 v71, v131

    move-wide/from16 v66, v132

    move-object/from16 v75, v134

    move-object/from16 v54, v135

    move-object/from16 v73, v136

    move-object/from16 v74, v137

    move-object/from16 v100, v138

    move-object/from16 v76, v139

    move-object/from16 v88, v6

    move/from16 v106, v37

    move-object/from16 v101, v52

    move/from16 v111, v60

    move-object/from16 v110, v61

    move-object/from16 v6, v77

    move-object/from16 v61, v99

    move-object/from16 v37, v123

    move-object/from16 v52, v126

    move-object/from16 v77, v129

    move-object/from16 v60, v140

    move-object/from16 v99, v82

    move-object/from16 v82, v38

    move-object/from16 v38, v125

    move/from16 v142, v80

    move/from16 v80, v79

    move/from16 v79, v142

    goto/16 :goto_1c

    :cond_66
    move-object/from16 v101, v10

    move-object/from16 v138, v11

    move-object/from16 v103, v14

    move-object/from16 v123, v37

    move-object/from16 v125, v38

    move-object/from16 v126, v52

    move-object/from16 v135, v54

    move-object/from16 v124, v55

    move-object/from16 v127, v56

    move-object/from16 v140, v60

    move-object/from16 v99, v61

    move-wide/from16 v132, v66

    move-object/from16 v66, v71

    move-object/from16 v128, v72

    move-object/from16 v136, v73

    move-object/from16 v56, v76

    move-object/from16 v129, v77

    move/from16 v60, v79

    move/from16 v37, v80

    move-object/from16 v77, v86

    move-object/from16 v67, v87

    move-object/from16 v55, v2

    move-object/from16 v52, v3

    move-object/from16 v38, v4

    move-object v14, v5

    move/from16 v73, v6

    move-object v10, v8

    move-object/from16 v61, v12

    move/from16 v76, v13

    move-object v4, v15

    move-object/from16 v54, v53

    move/from16 v71, v64

    move-object/from16 v3, v74

    move-object/from16 v64, v75

    move/from16 v74, v81

    move-object/from16 v12, p1

    move-object/from16 v53, v42

    move-object/from16 v42, v57

    move-object/from16 v75, v62

    move-object/from16 v62, v9

    move-object/from16 v142, v82

    move-object/from16 v82, v0

    move-object/from16 v0, v142

    .line 240
    invoke-static {v12, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 241
    move-object/from16 v1, v91

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v14, v12, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v1

    move-object v13, v0

    move-object v14, v3

    move-object/from16 v57, v10

    move-object v15, v12

    goto :goto_3e

    :cond_67
    move-object/from16 v15, v136

    .line 242
    invoke-static {v12, v15}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    move-wide/from16 v1, v89

    .line 243
    invoke-virtual {v14, v12, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v89

    .line 244
    move-object/from16 v2, v91

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-wide/from16 v3, v44

    move-wide/from16 v5, v46

    move-wide/from16 v7, v93

    move-object/from16 v57, v10

    move-wide/from16 v9, v89

    move-object/from16 v136, v15

    move-object v15, v12

    move-wide/from16 v11, v25

    .line 245
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v1

    :goto_3e
    move-object/from16 v91, v1

    move-object/from16 v72, v13

    move-object/from16 v141, v140

    goto :goto_3f

    :cond_68
    move-object v13, v0

    move-object/from16 v57, v10

    move-object/from16 v136, v15

    move-wide/from16 v1, v89

    move-object v10, v3

    move-object v15, v12

    move-object/from16 v12, v140

    .line 246
    invoke-static {v15, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 247
    invoke-virtual {v14, v15, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v79

    .line 248
    move-object/from16 v2, v91

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v55

    move-wide/from16 v4, v44

    move-wide/from16 v6, v46

    move-wide/from16 v8, v93

    move-object v14, v10

    move-wide/from16 v10, v79

    move-object/from16 v141, v12

    move-object/from16 v72, v13

    move-wide/from16 v12, v25

    .line 249
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object/from16 v91, v0

    move-wide/from16 v89, v79

    :goto_3f
    move/from16 v6, v73

    :goto_40
    move-object v7, v15

    move-object/from16 v3, v129

    goto :goto_43

    :cond_69
    move-object v14, v10

    move-object/from16 v141, v12

    move-object/from16 v72, v13

    .line 250
    invoke-static {v15, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 251
    invoke-static {v15, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v3, v129

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_6a
    move-object/from16 v3, v129

    const-string v0, "Label"

    .line 252
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 253
    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v78, v0

    goto :goto_41

    .line 254
    :cond_6b
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 255
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_6c
    :goto_41
    move-object v7, v15

    :goto_42
    move-wide/from16 v89, v1

    move/from16 v6, v73

    :goto_43
    move-object/from16 v8, v57

    move-object/from16 v0, v78

    move-wide/from16 v1, v93

    move-object/from16 v4, v128

    .line 256
    :goto_44
    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 258
    :goto_45
    invoke-virtual/range {v72 .. v72}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_70

    move-object/from16 v5, v72

    .line 259
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 260
    iget-object v7, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    if-eqz v0, :cond_6d

    .line 261
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 262
    :cond_6d
    iget-object v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    if-nez v8, :cond_6e

    move-object/from16 v8, v84

    .line 263
    :cond_6e
    iget-object v9, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    move-object/from16 v10, v138

    .line 264
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6f

    .line 266
    invoke-static {v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->fillInClearKeyInformation(Ljava/util/ArrayList;)V

    .line 267
    invoke-static {v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V

    .line 268
    new-instance v11, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v11, v8, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 269
    :cond_6f
    iget-object v8, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-wide v11, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    .line 272
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v87

    iget-object v7, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/ImmutableList;

    iget-object v9, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;

    iget-object v13, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    const/16 v93, 0x0

    move-wide/from16 v85, v11

    move-object/from16 v88, v7

    move-object/from16 v89, v9

    move-object/from16 v90, v8

    move-object/from16 v91, v13

    move-object/from16 v92, v4

    .line 273
    invoke-static/range {v85 .. v93}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v4

    .line 274
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v72, v5

    move-object/from16 v138, v10

    goto :goto_45

    .line 275
    :cond_70
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-object/from16 v62, v0

    move/from16 v64, v6

    move-object/from16 v65, v1

    move-object/from16 v66, v38

    move-object/from16 v67, v61

    move-object/from16 v68, v55

    invoke-direct/range {v62 .. v68}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v13, v126

    .line 276
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v15

    move-object/from16 v15, v124

    goto/16 :goto_4e

    :cond_71
    move-object/from16 v5, p0

    move-object/from16 v78, v0

    move/from16 v80, v37

    move-object/from16 v57, v42

    move-object/from16 v42, v53

    move-object/from16 v53, v54

    move-object/from16 v88, v55

    move/from16 v79, v60

    move-object/from16 v12, v61

    move-object/from16 v9, v62

    move-object/from16 v87, v67

    move/from16 v81, v74

    move-object/from16 v62, v75

    move/from16 v13, v76

    move-object/from16 v86, v77

    move-object/from16 v0, v82

    move-object/from16 v15, v92

    move-object/from16 v61, v99

    move-object/from16 v10, v101

    move-object/from16 v37, v123

    move-object/from16 v55, v124

    move-object/from16 v54, v135

    move-object/from16 v73, v136

    move-object/from16 v11, v138

    move-object/from16 v60, v141

    move-object/from16 v77, v3

    move-object/from16 v74, v14

    move-object/from16 v3, v52

    move-object/from16 v76, v56

    move-object/from16 v75, v64

    move/from16 v64, v71

    move-object/from16 v82, v72

    move-object/from16 v14, v103

    move-object/from16 v52, v126

    move-object/from16 v56, v127

    move-object/from16 v72, v4

    move-object/from16 v4, v38

    move-object/from16 v71, v66

    move-object/from16 v38, v125

    move-wide/from16 v66, v132

    goto/16 :goto_16

    :cond_72
    move-object/from16 v99, v0

    move-wide/from16 v69, v5

    move-wide/from16 v132, v7

    move-object/from16 v75, v9

    move-object/from16 v101, v10

    move-object/from16 v136, v12

    move/from16 v76, v13

    move-object/from16 v103, v14

    move-object/from16 v123, v37

    move-object/from16 v125, v38

    move-object/from16 v13, v52

    move-object/from16 v135, v54

    move-object/from16 v124, v55

    move-object/from16 v127, v56

    move-object/from16 v141, v60

    move-object/from16 v52, v3

    move-object v14, v11

    move-object/from16 v54, v53

    move-object/from16 v53, v42

    move-object/from16 v42, v15

    move-object/from16 v15, p1

    const-string v0, "EventStream"

    .line 277
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const/4 v1, 0x0

    move-object/from16 v11, v125

    .line 278
    invoke-interface {v2, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_73

    move-object v3, v4

    :cond_73
    move-object/from16 v12, v127

    .line 279
    invoke-interface {v2, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_74

    move-object v1, v4

    :cond_74
    const-wide/16 v4, 0x1

    const-string/jumbo v6, "timescale"

    .line 280
    invoke-static {v2, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "presentationTimeOffset"

    const-wide/16 v7, 0x0

    .line 281
    invoke-static {v2, v6, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 282
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x200

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 284
    :goto_46
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v10, "Event"

    .line 285
    invoke-static {v2, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_79

    move-object/from16 v125, v11

    move-object/from16 v127, v12

    const-wide/16 v11, 0x0

    move-object/from16 v14, v103

    .line 286
    invoke-static {v2, v14, v11, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v126, v13

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v15, v135

    .line 287
    invoke-static {v2, v15, v13, v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v60

    const-string v13, "presentationTime"

    const-wide/16 v14, 0x0

    .line 288
    invoke-static {v2, v13, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v62, 0x3e8

    move-wide/from16 v64, v4

    .line 289
    invoke-static/range {v60 .. v65}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v37

    sub-long v60, v13, v6

    const-wide/32 v62, 0xf4240

    .line 290
    invoke-static/range {v60 .. v65}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    const-string v15, "messageData"

    move-wide/from16 v55, v6

    const/4 v6, 0x0

    .line 291
    invoke-interface {v2, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_75

    const/4 v6, 0x0

    .line 292
    :cond_75
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 293
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 294
    sget-object v15, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 295
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 296
    :goto_47
    invoke-static {v2, v10}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_77

    .line 297
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    packed-switch v15, :pswitch_data_1

    goto :goto_48

    .line 298
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_48

    .line 299
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_48

    .line 300
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_48

    .line 301
    :pswitch_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_48

    .line 302
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_48

    .line 303
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_48

    .line 304
    :pswitch_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_48
    move-wide/from16 v71, v4

    move-object/from16 v57, v10

    goto :goto_4a

    .line 305
    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v57, v10

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_76
    move-wide/from16 v71, v4

    goto :goto_4a

    :pswitch_e
    move-object/from16 v57, v10

    .line 306
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    .line 307
    :goto_49
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-ge v10, v15, :cond_76

    .line 308
    invoke-interface {v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v71, v4

    invoke-interface {v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-interface {v7, v15, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v4, v71

    goto :goto_49

    :pswitch_f
    move-wide/from16 v71, v4

    move-object/from16 v57, v10

    .line 310
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_4a

    :pswitch_10
    move-wide/from16 v71, v4

    move-object/from16 v57, v10

    .line 311
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-interface {v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 312
    :goto_4a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-object/from16 v10, v57

    move-wide/from16 v4, v71

    goto/16 :goto_47

    :cond_77
    move-wide/from16 v71, v4

    .line 313
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 314
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 315
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-nez v6, :cond_78

    goto :goto_4b

    .line 316
    :cond_78
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_4b
    move-object/from16 v67, v4

    .line 317
    new-instance v4, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v60, v4

    move-object/from16 v61, v3

    move-object/from16 v62, v1

    move-wide/from16 v63, v37

    move-wide/from16 v65, v11

    invoke-direct/range {v60 .. v67}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 318
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 319
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_79
    move-wide/from16 v71, v4

    move-wide/from16 v55, v6

    move-object/from16 v125, v11

    move-object/from16 v127, v12

    move-object/from16 v126, v13

    .line 320
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 321
    :goto_4c
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 322
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 323
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    const/4 v5, 0x0

    .line 324
    :goto_4d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7a

    .line 325
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 326
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, v0, v5

    .line 327
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 328
    :cond_7a
    new-instance v5, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v60, v5

    move-object/from16 v61, v3

    move-object/from16 v62, v1

    move-wide/from16 v63, v71

    move-object/from16 v65, v0

    move-object/from16 v66, v4

    invoke-direct/range {v60 .. v66}, Lcom/google/android/exoplayer2/source/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    move-object/from16 v15, v124

    .line 329
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v6

    :goto_4e
    move-object/from16 v37, v103

    move-object/from16 v55, v125

    move-object/from16 v60, v126

    move-object/from16 v38, v127

    goto/16 :goto_51

    :cond_7b
    move-object/from16 v15, p1

    move-wide/from16 v6, v55

    move-wide/from16 v4, v71

    move-object/from16 v11, v125

    move-object/from16 v13, v126

    move-object/from16 v12, v127

    goto/16 :goto_46

    :cond_7c
    move-object/from16 v126, v13

    move-object/from16 v4, v103

    move-object/from16 v15, v124

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 330
    invoke-static {v2, v14}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const/4 v3, 0x0

    move-object/from16 v14, p0

    move-object/from16 v37, v4

    .line 331
    invoke-virtual {v14, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v3

    move-object/from16 v55, v125

    move-object/from16 v60, v126

    move-object/from16 v38, v127

    goto/16 :goto_52

    :cond_7d
    move-object/from16 v14, p0

    move-object/from16 v37, v4

    move-object/from16 v3, v136

    .line 332
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 333
    invoke-virtual {v14, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v48

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v2

    move-object v2, v3

    move-wide/from16 v3, v44

    move-wide/from16 v5, v46

    move-wide/from16 v7, v58

    move-wide/from16 v9, v48

    move-object/from16 v55, v125

    move-object/from16 v38, v127

    move-wide/from16 v11, v25

    .line 334
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-object v14, v13

    move-object/from16 v60, v126

    move-wide/from16 v142, v1

    move-object v2, v0

    move-wide/from16 v0, v142

    goto :goto_4f

    :cond_7e
    move-object v13, v2

    move-object/from16 v55, v125

    move-object/from16 v38, v127

    move-object/from16 v0, v141

    .line 335
    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 336
    invoke-virtual {v14, v13, v10, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v48

    const/4 v2, 0x0

    .line 337
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v44

    move-wide/from16 v6, v46

    move-wide/from16 v8, v58

    move-wide/from16 v56, v10

    move-wide/from16 v10, v48

    move-object v14, v13

    move-object/from16 v60, v126

    move-wide/from16 v12, v25

    .line 338
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object v2, v0

    move-wide/from16 v0, v56

    :goto_4f
    move-wide/from16 v49, v48

    move-object/from16 v48, v2

    :goto_50
    move-object v2, v14

    goto :goto_51

    :cond_7f
    move-object v14, v13

    move-object/from16 v60, v126

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-string v2, "AssetIdentifier"

    .line 339
    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 340
    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v43

    goto :goto_50

    .line 341
    :cond_80
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_50

    :goto_51
    move-object/from16 v3, v48

    :goto_52
    move-object/from16 v48, v3

    move-wide/from16 v11, v58

    move-object/from16 v3, v123

    move-wide/from16 v57, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    .line 342
    :goto_53
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 343
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-object/from16 v38, v1

    move-object/from16 v42, v60

    move-object/from16 v43, v15

    move-object/from16 v44, v0

    invoke-direct/range {v38 .. v44}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;)V

    .line 344
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 345
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 346
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    .line 347
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    cmp-long v4, v2, v57

    if-nez v4, :cond_82

    if-eqz v22, :cond_81

    const/4 v0, 0x1

    move-object/from16 v6, v54

    move-wide/from16 v7, v132

    const/16 v32, 0x1

    goto :goto_55

    :cond_81
    const-string v0, "Unable to determine start of period "

    .line 348
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 350
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 351
    :cond_82
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v57

    if-nez v0, :cond_83

    move-object/from16 v6, v54

    move-wide/from16 v4, v57

    goto :goto_54

    .line 352
    :cond_83
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    add-long/2addr v4, v2

    move-object/from16 v6, v54

    .line 353
    :goto_54
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v7, v4

    :goto_55
    move-object/from16 v0, p0

    goto :goto_56

    :cond_84
    move-object/from16 v43, v0

    move-object/from16 v14, v37

    move-object/from16 v4, v38

    move-object/from16 v38, v55

    move-wide/from16 v5, v69

    move-object/from16 v9, v75

    move/from16 v13, v76

    move-object/from16 v0, v99

    move-object/from16 v10, v101

    move-wide/from16 v7, v132

    move-object/from16 v37, v3

    move-object/from16 v55, v15

    move-object/from16 v15, v42

    move-object/from16 v3, v52

    move-object/from16 v42, v53

    move-object/from16 v53, v54

    move-object/from16 v52, v60

    move-object/from16 v54, v135

    goto/16 :goto_14

    :cond_85
    move-wide/from16 v69, v5

    move-wide/from16 v132, v7

    move-object/from16 v75, v9

    move-object/from16 v53, v11

    move-object v6, v12

    move/from16 v76, v13

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-wide/from16 v57, v0

    move-object/from16 v0, v43

    move-wide/from16 v7, v132

    :goto_56
    move-object/from16 v43, v0

    move-wide/from16 v0, v57

    :goto_57
    const-string v2, "MPD"

    move-object/from16 v3, p1

    .line 355
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    cmp-long v2, v18, v0

    if-nez v2, :cond_88

    cmp-long v2, v7, v0

    if-eqz v2, :cond_86

    move-wide/from16 v18, v7

    goto :goto_58

    :cond_86
    if-eqz v22, :cond_87

    goto :goto_58

    :cond_87
    const-string v0, "Unable to determine duration of static manifest."

    const/4 v1, 0x0

    .line 356
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 357
    :cond_88
    :goto_58
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    .line 358
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object v15, v0

    move-object/from16 v31, v33

    move-object/from16 v32, v36

    move-object/from16 v33, v35

    move-object/from16 v35, v6

    invoke-direct/range {v15 .. v35}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/google/android/exoplayer2/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0

    :cond_89
    const-string v0, "No periods found."

    const/4 v1, 0x0

    .line 359
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_8a
    move-object/from16 v14, p0

    move-object v15, v3

    move-object v12, v6

    move-object/from16 v0, v43

    move-object/from16 v11, v53

    move-wide/from16 v5, v69

    move-object/from16 v9, v75

    move/from16 v13, v76

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "-"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 5
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 6
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v3, p2

    move-wide v5, v0

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p1
.end method

.method public final parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "supplementary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "commentary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "caption"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "sign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "main"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "dub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "forced-subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "alternate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "forced_subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string/jumbo v2, "subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    const/16 p1, 0x20

    return p1

    :pswitch_2
    return v3

    :pswitch_3
    const/16 p1, 0x40

    return p1

    :pswitch_4
    const/16 p1, 0x100

    return p1

    :pswitch_5
    return v6

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    return v5

    :pswitch_8
    const/16 p1, 0x800

    return p1

    :pswitch_9
    const/16 p1, 0x200

    return p1

    :pswitch_a
    const/16 p1, 0x80

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseRoleFlagsFromProperties(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 3
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/trickmode"

    invoke-static {v3, v2}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x4000

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 17
    .param p2    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 1
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string/jumbo v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 3
    invoke-static {v0, v8, v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 4
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 5
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 6
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 7
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 9
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 10
    iget-object v8, v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 11
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "sourceURL"

    const-string v2, "range"

    move-object/from16 v3, p0

    .line 13
    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    :cond_6
    move-object/from16 v3, p0

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-object v0
.end method

.method public final parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 25
    .param p2    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-wide/16 v0, 0x1

    if-eqz v8, :cond_0

    .line 1
    iget-wide v2, v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string/jumbo v4, "timescale"

    invoke-static {v7, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v8, :cond_1

    .line 2
    iget-wide v2, v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 3
    invoke-static {v7, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v8, :cond_2

    .line 4
    iget-wide v2, v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v7, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    if-eqz v8, :cond_3

    .line 5
    iget-wide v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    :cond_3
    const-string/jumbo v2, "startNumber"

    invoke-static {v7, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 6
    invoke-static/range {p7 .. p10}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v18

    const/4 v0, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v17

    .line 7
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 8
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "sourceURL"

    const-string v2, "range"

    .line 9
    invoke-virtual {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_3

    :cond_5
    const-string v1, "SegmentTimeline"

    .line 10
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide/from16 v4, p5

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v1, "SegmentURL"

    .line 12
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v17, :cond_7

    .line 13
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    move-object/from16 v1, v17

    const-string v2, "media"

    const-string v3, "mediaRange"

    .line 14
    invoke-virtual {v6, v7, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    goto :goto_3

    .line 16
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v1, "SegmentList"

    .line 17
    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v8, :cond_c

    if-eqz v20, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object/from16 v20, v1

    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    .line 19
    :cond_a
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    :goto_5
    if-eqz v17, :cond_b

    goto :goto_6

    .line 20
    :cond_b
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v8, v20

    move-object/from16 v20, v1

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v8, v20

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    .line 21
    :goto_7
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object v7, v0

    .line 22
    invoke-static/range {p11 .. p12}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v21

    .line 23
    invoke-static/range {p3 .. p4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v23

    invoke-direct/range {v7 .. v24}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v0
.end method

.method public final parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 27
    .param p2    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;JJJJJ)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_0

    .line 1
    iget-wide v2, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string/jumbo v4, "timescale"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_1

    .line 2
    iget-wide v2, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 3
    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v7, :cond_2

    .line 4
    iget-wide v2, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    if-eqz v7, :cond_3

    .line 5
    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    :cond_3
    const-string/jumbo v2, "startNumber"

    invoke-static {v6, v2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    const/4 v0, 0x0

    .line 6
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    move-object/from16 v1, p3

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 8
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v4, "http://dashif.org/guidelines/last-segment-number"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v0, -0x1

    :goto_4
    move-wide/from16 v17, v0

    .line 10
    invoke-static/range {p8 .. p11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v19

    const/4 v0, 0x0

    if-eqz v7, :cond_6

    .line 11
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_5

    :cond_6
    move-object v1, v0

    :goto_5
    const-string v2, "media"

    .line 12
    invoke-interface {v6, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v1

    :cond_7
    move-object/from16 v21, v1

    if-eqz v7, :cond_8

    .line 14
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    goto :goto_6

    :cond_8
    move-object v1, v0

    :goto_6
    const-string v2, "initialization"

    .line 15
    invoke-interface {v6, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 16
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v1

    :cond_9
    move-object/from16 v26, v1

    move-object v14, v0

    .line 17
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 18
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "sourceURL"

    const-string v2, "range"

    move-object/from16 v4, p0

    .line 19
    invoke-virtual {v4, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object v14, v1

    goto :goto_7

    :cond_b
    move-object/from16 v4, p0

    const-string v1, "SegmentTimeline"

    .line 20
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide/from16 v4, p6

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 22
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const-string v1, "SegmentTemplate"

    .line 23
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v7, :cond_f

    if-eqz v14, :cond_d

    goto :goto_8

    .line 24
    :cond_d
    iget-object v14, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    :goto_8
    if-eqz v0, :cond_e

    goto :goto_9

    .line 25
    :cond_e
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    :cond_f
    :goto_9
    move-object v6, v14

    .line 26
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object v5, v1

    .line 27
    invoke-static/range {p12 .. p13}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v22

    .line 28
    invoke-static/range {p4 .. p5}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v24

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide/from16 v13, v17

    move-object/from16 v17, v0

    move-wide/from16 v18, v19

    move-object/from16 v20, v26

    invoke-direct/range {v5 .. v25}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;JJ)V

    return-object v1
.end method

.method public final parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v12

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "S"

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "t"

    .line 4
    invoke-static {v0, v2, v12, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    if-eqz v1, :cond_1

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v8, v14

    .line 5
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    move-result-wide v3

    :cond_1
    cmp-long v1, v14, v12

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v14, v3

    :goto_0
    const-string v1, "d"

    .line 6
    invoke-static {v0, v1, v12, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "r"

    .line 7
    invoke-static {v0, v3, v11}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-wide v5, v1

    move v7, v3

    move-wide v3, v14

    const/4 v1, 0x1

    goto :goto_1

    .line 8
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const-string v2, "SegmentTimeline"

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    const-wide/16 v18, 0x3e8

    move-wide/from16 v14, p4

    move-wide/from16 v16, p2

    .line 10
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-wide v7, v8

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    :cond_4
    return-object v10
.end method
