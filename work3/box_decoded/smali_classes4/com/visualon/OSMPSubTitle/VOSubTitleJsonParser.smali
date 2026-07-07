.class public Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;
.super Ljava/lang/Object;
.source "VOSubTitleJsonParser.java"


# static fields
.field static final EDGE_TYPE_DEPRESSED:I = 0x2

.field static final EDGE_TYPE_LEFT_DROP_SHADOW:I = 0x4

.field static final EDGE_TYPE_NONE:I = 0x0

.field static final EDGE_TYPE_RAISED:I = 0x1

.field static final EDGE_TYPE_RIGHT_DROP_SHADOW:I = 0x5

.field static final EDGE_TYPE_UNIFORM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VOSubTitleJsonParser"

.field static pNumber:Ljava/util/regex/Pattern;

.field private static printablePattern:Ljava/util/regex/Pattern;

.field private static unicodePattern:Ljava/util/regex/Pattern;


# instance fields
.field public mImageStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;",
            ">;"
        }
    .end annotation
.end field

.field private removeBlanksPatternEnd:Ljava/util/regex/Pattern;

.field private removeBlanksPatternStart:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^0-9-.]"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->pNumber:Ljava/util/regex/Pattern;

    const-string v0, "\\\\u"

    .line 237
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->unicodePattern:Ljava/util/regex/Pattern;

    const-string v0, "\\P{Print}"

    .line 238
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->printablePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mImageStores:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternStart:Ljava/util/regex/Pattern;

    .line 490
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternEnd:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static addAlpha(Ljava/lang/String;D)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double p1, p1, v0

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 182
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 52
    sget-object p1, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->pNumber:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 58
    :catch_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "VOSubTitleJsonParser"

    const-string v2, "extractValue encounter something shouldn\'t happen. Executing workaround."

    .line 59
    invoke-static {v1, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const-string v1, "px"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const-string v2, "em"

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const-string v2, "%"

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    const-string v2, "cell"

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :goto_1
    float-to-int p0, p0

    return p0
.end method

.method private getBoundingBoxData(Lorg/json/JSONObject;)Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "boundingbox"

    .line 294
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 295
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "top"

    .line 296
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    const-string v0, "bottom"

    .line 297
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    const-string v0, "left"

    .line 298
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    const-string v0, "right"

    .line 299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->right:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    nop

    .line 301
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "VOSubTitleJsonParser"

    const-string v2, "There is no boundingbox Data"

    .line 302
    invoke-static {v1, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private getImageDescription(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;
    .locals 3

    .line 120
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;-><init>()V

    :try_start_0
    const-string v1, "img-descriptor"

    .line 122
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "img-id"

    .line 123
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;->img_id:Ljava/lang/String;

    const-string v1, "scaling"

    .line 124
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;->scaling:Ljava/lang/String;

    const-string v1, "scaleFactor"

    .line 125
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;->scaleFactor:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getImageDescription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VOSubTitleJsonParser"

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getLineArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2

    :try_start_0
    const-string v0, "lines"

    .line 564
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 566
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is something wrong: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubTitleJsonParser"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getRectData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSRect;
    .locals 6

    const-string v0, "bottom"

    const-string v1, "right"

    const-string v2, "left"

    const-string v3, "top"

    .line 78
    new-instance v4, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    invoke-direct {v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;-><init>()V

    :try_start_0
    const-string v5, "rect"

    .line 80
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->top:I

    .line 82
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->left:I

    .line 83
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->right:I

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->bottom:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is something wrong: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubTitleJsonParser"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v4
.end method

.method private getSegment(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;
    .locals 6

    const-string v0, "color"

    const-string v1, "opacity"

    const/4 v2, 0x0

    .line 139
    :try_start_0
    new-instance v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;

    invoke-direct {v3}, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "text"

    .line 140
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    const-string v2, "format"

    .line 142
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "bold"

    .line 151
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isBold:Z

    const-string v2, "italic"

    .line 152
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isItalic:Z

    const-string v2, "underline"

    .line 153
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->hasTextUnderline:Z

    .line 154
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->opacity:D

    .line 155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->color:Ljava/lang/String;

    const-string v2, "size"

    .line 156
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    iput-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSizeStr:Ljava/lang/String;

    .line 158
    invoke-direct {p0, v2}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->isUnitPercentage(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "fontSize"

    if-eqz v4, :cond_0

    .line 159
    :try_start_2
    invoke-static {v2, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    iput v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSize:F

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {v2, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSize:F

    :goto_0
    const-string v2, "font"

    .line 164
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontFamily:Ljava/lang/String;

    const-string v2, "edge"

    .line 166
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    const-string v0, "style"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeStyle:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p1

    .line 172
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is something wrong: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubTitleJsonParser"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object v3, v2

    :goto_2
    return-object v3
.end method

.method private getWindowData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;
    .locals 5

    const-string v0, "color"

    const-string v1, "opacity"

    .line 96
    new-instance v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    invoke-direct {v2}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;-><init>()V

    :try_start_0
    const-string v3, "window"

    .line 98
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getRectData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    move-result-object v3

    iput-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    .line 100
    sget-object v3, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->HORIZONTAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    const-string v4, "ha"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->setAlignment(Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;Ljava/lang/String;)V

    .line 101
    sget-object v3, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;->VERTICAL:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;

    const-string v4, "va"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->setAlignment(Lcom/visualon/OSMPSubTitle/DataObject/JSWindow$ALIGNMENT;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->color:Ljava/lang/String;

    const-string v3, "edge"

    .line 105
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeOpacity:D

    .line 107
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeColor:Ljava/lang/String;

    const-string v0, "style"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeStyle:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is something wrong: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOSubTitleJsonParser"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v2
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 219
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_0

    .line 221
    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    .line 222
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private isUnitPercentage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "%"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private mappingEdgeType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "raised"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "depressed"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "uniform"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "left-shadowed"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "right-shadowed"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static mappingFontFamily(Ljava/lang/String;)I
    .locals 1

    const-string v0, "default"

    .line 254
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_0
    const-string v0, "courier"

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xe

    goto/16 :goto_0

    :cond_1
    const-string v0, "monospace-serif"

    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto/16 :goto_0

    :cond_2
    const-string v0, "times new roman"

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0xd

    goto :goto_0

    :cond_3
    const-string v0, "helvetica"

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0xf

    goto :goto_0

    :cond_4
    const-string v0, "monospace"

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x8

    goto :goto_0

    :cond_5
    const-string v0, "arial"

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x10

    goto :goto_0

    :cond_6
    const-string v0, "casual"

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x5

    goto :goto_0

    :cond_7
    const-string v0, "cursive"

    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x6

    goto :goto_0

    :cond_8
    const-string v0, "sans-serif-smallcaps"

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x7

    goto :goto_0

    :cond_9
    const-string v0, "Yu Gothic"

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0x13

    goto :goto_0

    :cond_a
    const-string v0, "sans serif"

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x9

    goto :goto_0

    :cond_b
    const-string v0, "serif"

    .line 278
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0xa

    goto :goto_0

    :cond_c
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private retrieveImageData(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "VOSubTitleJsonParser"

    .line 503
    iget-object v1, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "images"

    .line 506
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v2, 0x0

    .line 508
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 512
    new-instance v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;

    invoke-direct {v3}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;-><init>()V

    .line 514
    new-instance v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;

    invoke-direct {v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;-><init>()V

    .line 515
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 517
    invoke-direct {p0, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getWindowData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    move-result-object v6

    iput-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    .line 518
    invoke-direct {p0, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getImageDescription(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;

    move-result-object v5

    iput-object v5, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsImgDesc:Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;

    .line 521
    new-instance v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    invoke-direct {v5}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;-><init>()V

    iput-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    .line 522
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsImgDesc:Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;->img_id:Ljava/lang/String;

    iput-object v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->img_id:Ljava/lang/String;

    .line 523
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsImgDesc:Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;->scaling:Ljava/lang/String;

    iput-object v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->scaling:Ljava/lang/String;

    .line 524
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsImgDesc:Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;

    iget-wide v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSImageDescription;->scaleFactor:D

    iput-wide v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->scaleFactor:D

    .line 526
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 527
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 529
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 531
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 535
    iget-object v5, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    .line 536
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->color:Ljava/lang/String;

    iget-object v7, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-wide v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 537
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeStyle:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingEdgeType(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    .line 538
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->imageRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v6, v6, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeColor:Ljava/lang/String;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSImage;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-wide v7, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeOpacity:D

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    .line 540
    iget-object v4, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mImageStores:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageInfoDescriptor:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoDescriptor;->img_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;

    .line 541
    new-instance v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    invoke-direct {v5}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;-><init>()V

    iput-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    .line 542
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->width:I

    iput v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->width:I

    .line 543
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->height:I

    iput v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->height:I

    .line 544
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->size:I

    iput v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->size:I

    .line 545
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v6, v4, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->data:[B

    iput-object v6, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->picData:[B

    .line 546
    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->type:I

    invoke-static {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v4

    iput-object v4, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 547
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfo;->imageData:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleImageInfoData;->imageType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :cond_0
    iget-object v4, p1, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->imageInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    nop

    .line 553
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "There is no image info. for subtitle"

    .line 554
    invoke-static {v0, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static uencodeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->unicodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-?[0-9a-fA-F]+"

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\\u"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 246
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-16"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 247
    sget-object p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->printablePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public parseObj2SubtitleInfo(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    .locals 6

    .line 455
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "VOSubTitleJsonParser"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "var parseObj2SubtitleInfo = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "#ID3"

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    if-ne v0, v3, :cond_1

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 464
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2var parseObj2SubtitleInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 470
    :cond_2
    :goto_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->parseObj2SubtitleInfo(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    move-result-object v3

    .line 472
    iput-object p1, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->jsonString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v3, 0x0

    .line 476
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is something wrong: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 482
    iput-boolean v0, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->isForID3:Z

    :cond_4
    return-object v3
.end method

.method public parseObj2SubtitleInfo(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ", "

    const-string v3, ""

    const-string v4, "bottom"

    const-string v5, "right"

    const-string v6, "left"

    const-string v7, "top"

    const-string v8, "There is something wrong: "

    const-string v9, "VOSubTitleJsonParser"

    .line 310
    new-instance v10, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {v10}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;-><init>()V

    .line 314
    :try_start_0
    new-instance v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    invoke-direct {v12}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_c

    :try_start_1
    const-string v10, "rect"

    .line 315
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 316
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectTopString:Ljava/lang/String;

    .line 317
    iget-object v13, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectTopString:Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectTop:F

    .line 318
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectLeftString:Ljava/lang/String;

    .line 319
    iget-object v7, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectLeftString:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iput v6, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectLeft:F

    .line 320
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectRightString:Ljava/lang/String;

    .line 321
    iget-object v6, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectRightString:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectRight:F

    .line 322
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectBottomString:Ljava/lang/String;

    .line 323
    iget-object v5, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectBottomString:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    iput v4, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->rectBottom:F

    .line 325
    invoke-direct/range {p0 .. p1}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getBoundingBoxData(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->boundingBoxRect:Landroid/graphics/Rect;

    const-string v4, "blocks"

    .line 326
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 327
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 328
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 329
    new-instance v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;

    invoke-direct {v6}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;-><init>()V

    .line 332
    invoke-direct {v1, v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getWindowData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    move-result-object v7

    .line 334
    iget-object v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v13, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->top:I

    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 335
    iget-object v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v13, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->bottom:I

    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    .line 336
    iget-object v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v13, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->left:I

    iput v13, v10, Landroid/graphics/Rect;->left:I

    .line 337
    iget-object v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v10, v10, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v13, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v13, v13, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->right:I

    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 338
    iget-object v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->color:Ljava/lang/String;

    iget-wide v14, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    invoke-static {v13, v14, v15}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    iput v13, v10, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 340
    iget-object v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeStyle:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingEdgeType(Ljava/lang/String;)I

    move-result v13

    iput v13, v10, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    .line 341
    iget-object v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v13, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeColor:Ljava/lang/String;

    iget-wide v14, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeOpacity:D

    invoke-static {v13, v14, v15}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    iput v13, v10, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    .line 342
    iget-object v10, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->verticalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-virtual {v10}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->getValue()I

    move-result v10

    iput v10, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->verticalAlignment:I

    .line 343
    iget-object v7, v7, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->horizontalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v7}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v7

    iput v7, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->horizontalAlignment:I

    .line 346
    invoke-direct {v1, v6, v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->retrieveImageData(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;Lorg/json/JSONObject;)V

    .line 351
    invoke-direct {v1, v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getLineArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_b

    if-eqz v7, :cond_5

    const/4 v10, 0x0

    .line 353
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_5

    .line 354
    new-instance v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;

    invoke-direct {v13}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;-><init>()V

    .line 355
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;-><init>()V

    .line 357
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 359
    invoke-direct {v1, v14}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getWindowData(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    move-result-object v15

    iput-object v15, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    .line 361
    iget-object v15, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->top:I

    iput v11, v15, Landroid/graphics/Rect;->top:I

    .line 362
    iget-object v11, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->bottom:I

    iput v15, v11, Landroid/graphics/Rect;->bottom:I

    .line 363
    iget-object v11, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->right:I

    iput v15, v11, Landroid/graphics/Rect;->right:I

    .line 364
    iget-object v11, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->rect:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->jsRect:Lcom/visualon/OSMPSubTitle/DataObject/JSRect;

    iget v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/JSRect;->left:I

    iput v15, v11, Landroid/graphics/Rect;->left:I

    .line 365
    iget-object v11, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v15, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v15, v15, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->color:Ljava/lang/String;

    move-object/from16 p1, v4

    iget-object v4, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    move/from16 v16, v5

    iget-wide v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->opacity:D

    invoke-static {v15, v4, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v11, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->color:I

    .line 366
    iget-object v4, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeStyle:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingEdgeType(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeType:I

    .line 367
    iget-object v4, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v4, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->dataBox:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeColor:Ljava/lang/String;

    iget-object v11, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_9

    move-object v15, v12

    :try_start_3
    iget-wide v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->edgeOpacity:D

    invoke-static {v5, v11, v12}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/visualon/OSMPSubTitle/DataObject/VORect;->edgeColor:I

    .line 368
    iget-object v4, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v5, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v5, v5, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->horizontalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v5}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v5

    iput v5, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->horizontalAlignment:I

    .line 369
    iget-object v4, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->textRowDes:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSLine;->jsWindow:Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/JSWindow;->verticalAlignment:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->getValue()I

    move-result v0

    iput v0, v4, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowDescriptor;->verticalAlignment:I

    const-string v0, "segments"

    .line 371
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 372
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 373
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 374
    invoke-direct {v1, v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->getSegment(Lorg/json/JSONObject;)Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;

    move-result-object v11

    .line 375
    new-instance v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;

    invoke-direct {v12}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    .line 382
    :try_start_4
    iget-object v0, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 383
    iget-object v0, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->uencodeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 385
    iget-object v0, v1, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternStart:Ljava/util/regex/Pattern;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_1

    move-object/from16 v17, v4

    :try_start_5
    iget-object v4, v1, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternEnd:Ljava/util/regex/Pattern;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v4, :cond_0

    .line 387
    :try_start_6
    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 388
    iget-object v0, v1, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternEnd:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_0
    move-object/from16 v18, v3

    goto :goto_3

    :catch_0
    move-exception v0

    .line 396
    :try_start_7
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v18, v3

    const/4 v4, 0x0

    :try_start_8
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v9, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_4

    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 403
    :goto_3
    iput-object v14, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v10, v15

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 405
    :goto_4
    :try_start_9
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    if-eqz v3, :cond_2

    .line 406
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v9, v0, v4}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    .line 410
    :cond_2
    :goto_5
    :try_start_b
    iget-object v0, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->text:Ljava/lang/String;

    iput-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 412
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;-><init>()V

    iput-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    .line 413
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSize:F

    iput v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    .line 414
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontSizeStr:Ljava/lang/String;

    iput-object v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    .line 415
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->fontFamily:Ljava/lang/String;

    iput-object v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontName:Ljava/lang/String;

    .line 416
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->fontInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;

    iget-object v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->color:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    move-object v4, v15

    :try_start_c
    iget-wide v14, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->opacity:D

    invoke-static {v3, v14, v15}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    .line 418
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isItalic:Z

    iput-boolean v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isItalic:Z

    .line 419
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->isBold:Z

    iput-boolean v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->isBold:Z

    .line 420
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-boolean v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->hasTextUnderline:Z

    iput-boolean v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->hasUnderline:Z

    .line 421
    iget-object v0, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    iget-object v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeStyle:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->mappingEdgeType(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->edgeType:I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_7

    .line 423
    :try_start_d
    iget-object v0, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    iget-wide v14, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    invoke-static {v0, v14, v15}, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->addAlpha(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    .line 425
    iget-object v3, v12, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    iget-object v3, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;->charEffect:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontEffect;->eddgeColor:I

    .line 426
    iget-object v0, v13, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextRowInfo;->segmentTextInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_6

    .line 432
    :catch_5
    :try_start_e
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9, v0, v11}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 428
    :catch_6
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatExceptiont: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeColor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v11, Lcom/visualon/OSMPSubTitle/DataObject/JSSegment;->edgeOpacity:D

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9, v0, v11}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object v15, v4

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto/16 :goto_2

    :cond_4
    move-object/from16 v18, v3

    move-object v4, v15

    .line 438
    iget-object v0, v6, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    iget-object v0, v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;->lineTextRowInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_7

    add-int/lit8 v10, v10, 0x1

    move-object v12, v4

    move/from16 v5, v16

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    goto/16 :goto_1

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v4, v15

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v4, v12

    :goto_7
    move-object v10, v4

    goto :goto_9

    :cond_5
    move-object/from16 v18, v3

    move-object/from16 p1, v4

    move/from16 v16, v5

    move-object v3, v12

    .line 441
    :try_start_f
    iget-object v0, v3, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;->subtitleEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_a

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v4, p1

    move-object v12, v3

    move-object/from16 v3, v18

    goto/16 :goto_0

    :catch_a
    move-exception v0

    goto :goto_8

    :cond_6
    move-object v3, v12

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v3, v12

    :goto_8
    move-object v10, v3

    goto :goto_9

    :catch_c
    move-exception v0

    .line 445
    :goto_9
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v12, v10

    :goto_a
    return-object v12
.end method

.method public setSubtitleTrim(Ljava/lang/String;)V
    .locals 2

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]+$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternStart:Ljava/util/regex/Pattern;

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]+"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternEnd:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternStart:Ljava/util/regex/Pattern;

    .line 498
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubTitleJsonParser;->removeBlanksPatternEnd:Ljava/util/regex/Pattern;

    :goto_0
    return-void
.end method
