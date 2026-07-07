.class public Lcom/thebuzzmedia/sjxp/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thebuzzmedia/sjxp/XMLParser$Location;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Ljava/lang/Boolean;

.field public static final ENABLE_NAMESPACES:Ljava/lang/Boolean;

.field public static final ENABLE_VALIDATION:Ljava/lang/Boolean;

.field public static final LOG_MESSAGE_PREFIX:Ljava/lang/String; = "[sjxp] "

.field public static final XPP_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;


# instance fields
.field private attrRuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/thebuzzmedia/sjxp/rule/IRule<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private charRuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/thebuzzmedia/sjxp/rule/IRule<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private continueParsing:Z

.field private location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/thebuzzmedia/sjxp/XMLParser<",
            "TT;>.",
            "Location;"
        }
    .end annotation
.end field

.field private tagRuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/thebuzzmedia/sjxp/rule/IRule<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private toStringCache:Ljava/lang/String;

.field private xpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "sjxp.debug"

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    const-string v1, "sjxp.namespaces"

    .line 91
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/thebuzzmedia/sjxp/XMLParser;->ENABLE_NAMESPACES:Ljava/lang/Boolean;

    const-string v2, "sjxp.validation"

    .line 110
    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/thebuzzmedia/sjxp/XMLParser;->ENABLE_VALIDATION:Ljava/lang/Boolean;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "Debug output ENABLED"

    .line 135
    invoke-static {v6, v4}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    sput-object v4, Lcom/thebuzzmedia/sjxp/XMLParser;->XPP_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

    const-string v6, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 141
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#validation"

    .line 143
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "XmlPullParserFactory configured [namespaces=%s, validation=%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v2, v4, v3

    .line 147
    invoke-static {v0, v4}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An exception occurred while calling XmlPullParserFactory.newInstance(). A library providing the impl of the XML Pull Parser spec (e.g. XPP3 or Android SDK) must be available at runtime."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs constructor <init>([Lcom/thebuzzmedia/sjxp/rule/IRule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/thebuzzmedia/sjxp/rule/IRule<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/thebuzzmedia/sjxp/XMLParserException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->continueParsing:Z

    if-eqz p1, :cond_0

    .line 211
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    invoke-direct {v0, p0}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;-><init>(Lcom/thebuzzmedia/sjxp/XMLParser;)V

    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    .line 218
    :try_start_0
    sget-object v0, Lcom/thebuzzmedia/sjxp/XMLParser;->XPP_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    invoke-virtual {p0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->initRules([Lcom/thebuzzmedia/sjxp/rule/IRule;)V

    return-void

    :catch_0
    move-exception p1

    .line 220
    new-instance v0, Lcom/thebuzzmedia/sjxp/XMLParserException;

    const-string v1, "An exception occurred while trying to create a new XmlPullParser instance using the XmlPullParserFactory."

    invoke-direct {v0, v1, p1}, Lcom/thebuzzmedia/sjxp/XMLParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rules cannot be null or empty, you must provide at least 1 rule to execute otherwise parsing will do nothing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 182
    sget-object v0, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sjxp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    return-void
.end method


# virtual methods
.method protected doEndDocument(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 830
    sget-object p1, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "END_DOCUMENT, Parsing COMPLETE"

    .line 831
    invoke-static {v0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected doEndTag(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->tagRuleMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    invoke-virtual {v1}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->getCachedHashCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 791
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 792
    sget-object v3, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    .line 793
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "\t%d TAG rules found for END_TAG..."

    invoke-static {v4, v3}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 797
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/thebuzzmedia/sjxp/rule/IRule;

    .line 799
    sget-object v6, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v7, "\t\tRunning TAG Rule: %s"

    .line 800
    invoke-static {v7, v6}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    :cond_1
    invoke-interface {v5, p0, v2, p1}, Lcom/thebuzzmedia/sjxp/rule/IRule;->handleTag(Lcom/thebuzzmedia/sjxp/XMLParser;ZLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 807
    :cond_2
    iget-object p1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    invoke-virtual {p1}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->pop()V

    .line 809
    sget-object p1, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    aput-object v0, p1, v2

    const-string v0, "END_TAG: %s"

    invoke-static {v0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected doParse(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    invoke-virtual {v0}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->clear()V

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->continueParsing:Z

    .line 571
    sget-object v1, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Parsing starting..."

    .line 572
    invoke-static {v3, v1}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 576
    :goto_0
    iget-boolean v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->continueParsing:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_5

    .line 577
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v0, :cond_4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->doText(Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {p0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->doEndTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->doStartTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 591
    :cond_4
    iput-boolean v2, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->continueParsing:Z

    .line 592
    invoke-virtual {p0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->doEndDocument(Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    :cond_5
    sget-object p1, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    new-array p1, v5, [Ljava/lang/Object;

    .line 599
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v2

    long-to-double v1, v6

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Parse COMPLETE, elapsed time: %dms (approx %f seconds)"

    invoke-static {v0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method protected doStartTag(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget-object v0, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    .line 626
    iget-object v4, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    aput-object v4, v1, v3

    const-string v4, "START_TAG: %s"

    invoke-static {v4, v1}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->tagRuleMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    invoke-virtual {v4}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->getCachedHashCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 631
    iget-object v4, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->attrRuleMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    invoke-virtual {v5}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->getCachedHashCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 635
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_8

    .line 639
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    new-array v0, v5, [Ljava/lang/Object;

    if-nez v1, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    .line 640
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    if-nez v4, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v6, "\t%d TAG rules and %d ATTR rules found for START_TAG..."

    invoke-static {v6, v0}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v1, :cond_7

    .line 646
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_7

    .line 647
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thebuzzmedia/sjxp/rule/IRule;

    .line 649
    sget-object v8, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v3

    const-string v9, "\t\tRunning TAG Rule: %s"

    .line 650
    invoke-static {v9, v8}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    :cond_6
    invoke-interface {v7, p0, v2, p1}, Lcom/thebuzzmedia/sjxp/rule/IRule;->handleTag(Lcom/thebuzzmedia/sjxp/XMLParser;ZLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_f

    .line 658
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_f

    .line 659
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/thebuzzmedia/sjxp/rule/IRule;

    .line 661
    sget-object v7, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const-string v8, "\t\tRunning ATTR Rule: %s"

    .line 662
    invoke-static {v8, v7}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    :cond_8
    invoke-interface {v6}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getAttributeNames()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 668
    array-length v8, v7

    if-nez v8, :cond_9

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    .line 683
    :goto_4
    array-length v9, v7

    if-ge v8, v9, :cond_e

    .line 684
    aget-object v9, v7, v8

    const/4 v10, 0x0

    .line 689
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_b

    const/16 v10, 0x5d

    .line 690
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-le v10, v5, :cond_a

    .line 702
    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 698
    :cond_a
    new-instance p1, Lcom/thebuzzmedia/sjxp/XMLParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "namespace URI for rule looks to be incomplete or empty for IRule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/thebuzzmedia/sjxp/XMLParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    if-nez v10, :cond_c

    const/4 v11, 0x0

    goto :goto_6

    .line 705
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v5

    .line 713
    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v11

    if-le v12, v2, :cond_d

    .line 719
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 723
    iget-object v11, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, p0, v8, v9, p1}, Lcom/thebuzzmedia/sjxp/rule/IRule;->handleParsedAttribute(Lcom/thebuzzmedia/sjxp/XMLParser;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 714
    :cond_d
    new-instance p1, Lcom/thebuzzmedia/sjxp/XMLParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local name for rule looks to be missing for IRule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/thebuzzmedia/sjxp/XMLParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_f
    :goto_8
    return-void
.end method

.method protected doText(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 747
    sget-object v0, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    .line 748
    iget-object v4, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    aput-object v4, v1, v2

    const-string v4, "TEXT: %s"

    invoke-static {v4, v1}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->charRuleMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->location:Lcom/thebuzzmedia/sjxp/XMLParser$Location;

    invoke-virtual {v4}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->getCachedHashCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 754
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 757
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    .line 758
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "\t%d rules found for TEXT..."

    invoke-static {v4, v0}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 764
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/thebuzzmedia/sjxp/rule/IRule;

    .line 766
    sget-object v7, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v8, "\t\tRunning Rule: %s"

    .line 767
    invoke-static {v8, v7}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    :cond_3
    invoke-interface {v6, p0, v0, p1}, Lcom/thebuzzmedia/sjxp/rule/IRule;->handleParsedCharacters(Lcom/thebuzzmedia/sjxp/XMLParser;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method protected varargs initRules([Lcom/thebuzzmedia/sjxp/rule/IRule;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/thebuzzmedia/sjxp/rule/IRule<",
            "TT;>;)V"
        }
    .end annotation

    .line 471
    array-length v0, p1

    const/16 v1, 0x40

    const/4 v2, 0x2

    if-le v0, v1, :cond_0

    array-length v0, p1

    mul-int/lit8 v1, v0, 0x2

    .line 474
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->tagRuleMap:Ljava/util/Map;

    .line 475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->attrRuleMap:Ljava/util/Map;

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->charRuleMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 481
    array-length v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ge v4, v1, :cond_5

    .line 482
    aget-object v7, p1, v4

    .line 484
    sget-object v8, Lcom/thebuzzmedia/sjxp/XMLParser$1;->$SwitchMap$com$thebuzzmedia$sjxp$rule$IRule$Type:[I

    invoke-interface {v7}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getType()Lcom/thebuzzmedia/sjxp/rule/IRule$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/thebuzzmedia/sjxp/rule/IRule$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v5, :cond_3

    if-eq v8, v2, :cond_2

    if-eq v8, v6, :cond_1

    goto :goto_1

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->charRuleMap:Ljava/util/Map;

    invoke-interface {v7}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getLocationPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    iget-object v5, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->charRuleMap:Ljava/util/Map;

    invoke-interface {v7}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getLocationPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->attrRuleMap:Ljava/util/Map;

    invoke-interface {v7}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getLocationPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 503
    iget-object v5, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->attrRuleMap:Ljava/util/Map;

    invoke-interface {v7}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getLocationPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->tagRuleMap:Ljava/util/Map;

    invoke-interface {v7}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getLocationPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    iget-object v5, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->tagRuleMap:Ljava/util/Map;

    invoke-interface {v7}, Lcom/thebuzzmedia/sjxp/rule/IRule;->getLocationPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_4
    :goto_1
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 525
    :cond_5
    sget-object p1, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v6, [Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->tagRuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->attrRuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->charRuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Initialized %d TAG rules, %d ATTRIBUTE rules and %d CHARACTER rules."

    invoke-static {v0, p1}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/thebuzzmedia/sjxp/XMLParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/thebuzzmedia/sjxp/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/thebuzzmedia/sjxp/XMLParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 340
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/thebuzzmedia/sjxp/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;,
            Lcom/thebuzzmedia/sjxp/XMLParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p1, p2, v0}, Lcom/thebuzzmedia/sjxp/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;,
            Lcom/thebuzzmedia/sjxp/XMLParserException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    .line 431
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encoding ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is not a valid charset encoding in this runtime according to Charset.isSupported(encoding)."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 444
    sget-object p1, Lcom/thebuzzmedia/sjxp/XMLParser;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Underlying XmlPullParser input set [type=InputStream, encoding=%s (null is OK), userObject=%s]"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 445
    iget-object v2, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    if-nez p3, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    move-object v2, p3

    :goto_1
    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/thebuzzmedia/sjxp/XMLParser;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 457
    :cond_4
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/thebuzzmedia/sjxp/XMLParser;->doParse(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 463
    new-instance p2, Lcom/thebuzzmedia/sjxp/XMLParserException;

    const-string p3, "An error with the underlying data stream being parsed occurred."

    invoke-direct {p2, p3, p1}, Lcom/thebuzzmedia/sjxp/XMLParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 459
    new-instance p2, Lcom/thebuzzmedia/sjxp/XMLParserException;

    const-string p3, "An exception occurred while parsing the given source, the XML document may be malformed."

    invoke-direct {p2, p3, p1}, Lcom/thebuzzmedia/sjxp/XMLParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 449
    new-instance p3, Lcom/thebuzzmedia/sjxp/XMLParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to set the given InputStream (with an optional encoding of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\') as input for the underlying XmlPullParser."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/thebuzzmedia/sjxp/XMLParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p3

    .line 428
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->continueParsing:Z

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->toStringCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[attributeRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->attrRuleMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", characterRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->charRuleMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->toStringCache:Ljava/lang/String;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser;->toStringCache:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
