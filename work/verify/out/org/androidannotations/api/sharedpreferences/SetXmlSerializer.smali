.class public final Lorg/androidannotations/api/sharedpreferences/SetXmlSerializer;
.super Ljava/lang/Object;
.source "SetXmlSerializer.java"


# static fields
.field private static final NAMESPACE:Ljava/lang/String; = ""

.field private static final SET_TAG:Ljava/lang/String; = "AA_set"

.field private static final STRING_TAG:Ljava/lang/String; = "AA_string"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AA_string"

    const-string v1, ""

    const-string v2, "getStringSet"

    .line 1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v5, 0x0

    .line 3
    :try_start_10
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string p0, "AA_set"

    const/4 v6, 0x2

    .line 5
    invoke-interface {v4, v6, v1, p0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_21
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v7, 0x3

    if-eq p0, v7, :cond_40

    .line 7
    invoke-interface {v4, v6, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 p0, 0x4

    .line 9
    invoke-interface {v4, p0, v5, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    invoke-interface {v4, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_3f} :catch_46
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3f} :catch_41

    goto :goto_21

    :cond_40
    return-object v3

    :catch_41
    move-exception p0

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_46
    move-exception p0

    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method public static serialize(Ljava/util/Set;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "AA_string"

    const-string v1, "AA_set"

    const-string v2, ""

    if-nez p0, :cond_c

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    .line 2
    :cond_c
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 4
    :try_start_15
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 5
    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1f

    .line 8
    :cond_37
    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_3e} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_3e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3e} :catch_3e

    .line 9
    :catch_3e
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
