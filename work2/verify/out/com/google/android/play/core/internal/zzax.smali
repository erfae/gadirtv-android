.class public final Lcom/google/android/play/core/internal/zzax;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/splitcompat/zza;

.field private zzb:Lorg/xmlpull/v1/XmlPullParser;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitcompat/zza;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzax;->zza:Lcom/google/android/play/core/splitcompat/zza;

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_88

    :goto_4
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    if-eq v0, v2, :cond_80

    goto :goto_4

    .line 2
    :cond_11
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v3, "versionCode"

    .line 4
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "versionCodeMajor"

    .line 5
    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_78

    const/4 v3, 0x0

    .line 6
    :try_start_34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_38} :catch_63

    if-nez v1, :cond_3c

    int-to-long v0, v0

    return-wide v0

    .line 7
    :cond_3c
    :try_start_3c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_40} :catch_4e

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0

    :catch_4e
    move-exception v0

    .line 8
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Couldn\'t parse versionCodeMajor to int: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_63
    move-exception v0

    .line 10
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Couldn\'t parse versionCode to int: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_78
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Manifest entry doesn\'t contain \'versionCode\' attribute."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_80
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Couldn\'t find manifest entry at top-level."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_88
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Manifest file needs to be loaded before parsing."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Landroid/content/res/AssetManager;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/play/core/splitcompat/zza;->zzc(Landroid/content/res/AssetManager;Ljava/io/File;)I

    move-result p2

    const-string v0, "AndroidManifest.xml"

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzax;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method
