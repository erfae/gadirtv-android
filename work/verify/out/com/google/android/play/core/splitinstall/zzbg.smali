.class final Lcom/google/android/play/core/splitinstall/zzbg;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public static final zza(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)Lcom/google/android/play/core/splitinstall/zzk;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_97

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "splits"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 4
    :cond_1a
    :goto_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "module"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "name"

    .line 7
    invoke-static {v0, p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzb(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 8
    :cond_3b
    :goto_3b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_1a

    .line 9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_3b

    .line 10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 11
    :cond_53
    :goto_53
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_3b

    .line 12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_53

    .line 13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    const-string v3, "key"

    .line 14
    invoke-static {v3, p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzb(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "split"

    .line 15
    invoke-static {v4, p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzb(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzc(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)V

    if-eqz v3, :cond_53

    if-eqz v4, :cond_53

    .line 17
    invoke-virtual {p1, v0, v3, v4}, Lcom/google/android/play/core/splitinstall/zzi;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/splitinstall/zzi;

    goto :goto_53

    .line 18
    :cond_82
    invoke-static {p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzc(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)V

    goto :goto_53

    .line 19
    :cond_86
    invoke-static {p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzc(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)V

    goto :goto_3b

    .line 20
    :cond_8a
    invoke-static {p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzc(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)V

    goto :goto_1a

    .line 21
    :cond_8e
    invoke-static {p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzc(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)V

    goto :goto_1a

    .line 22
    :cond_92
    invoke-static {p0, p1}, Lcom/google/android/play/core/splitinstall/zzbg;->zzc(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)V

    goto/16 :goto_0

    .line 23
    :cond_97
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/zzi;->zzb()Lcom/google/android/play/core/splitinstall/zzk;

    move-result-object p0
    :try_end_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_9b} :catch_a0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9b} :catch_9e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9b} :catch_9c

    return-object p0

    :catch_9c
    move-exception p0

    goto :goto_a1

    :catch_9e
    move-exception p0

    goto :goto_a1

    :catch_a0
    move-exception p0

    :goto_a1
    const-string p1, "SplitInstall"

    const-string v0, "Error while parsing splits.xml"

    .line 24
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final zzb(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p2, 0x0

    .line 1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge p2, v0, :cond_19

    .line 2
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final zzc(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/zzi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_14

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_1

    :cond_e
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method
