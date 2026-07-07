.class public final Lcom/visualon/OSMPUtils/voMimeTypes;
.super Ljava/lang/Object;
.source "voMimeTypes.java"


# static fields
.field public static final VOAUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final VOAUDIO_AC3:Ljava/lang/String; = "audio/ac3"

.field public static final VOAUDIO_ALAC:Ljava/lang/String; = "audio/alac"

.field public static final VOAUDIO_ALAW:Ljava/lang/String; = "audio/g711-alaw"

.field public static final VOAUDIO_AMR_NB:Ljava/lang/String; = "audio/3gpp"

.field public static final VOAUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static final VOAUDIO_DTS:Ljava/lang/String; = "audio/vnd.dts"

.field public static final VOAUDIO_DTS_EXPRESS:Ljava/lang/String; = "audio/vnd.dts.hd;profile=lbr"

.field public static final VOAUDIO_DTS_HD:Ljava/lang/String; = "audio/vnd.dts.hd"

.field public static final VOAUDIO_E_AC3:Ljava/lang/String; = "audio/eac3"

.field public static final VOAUDIO_E_AC3_JOC:Ljava/lang/String; = "audio/eac3-joc"

.field public static final VOAUDIO_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final VOAUDIO_MLAW:Ljava/lang/String; = "audio/g711-mlaw"

.field public static final VOAUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final VOAUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final VOAUDIO_MPEG_L1:Ljava/lang/String; = "audio/mpeg-L1"

.field public static final VOAUDIO_MPEG_L2:Ljava/lang/String; = "audio/mpeg-L2"

.field public static final VOAUDIO_MSGSM:Ljava/lang/String; = "audio/gsm"

.field public static final VOAUDIO_OPUS:Ljava/lang/String; = "audio/opus"

.field public static final VOAUDIO_RAW:Ljava/lang/String; = "audio/raw"

.field public static final VOAUDIO_TRUEHD:Ljava/lang/String; = "audio/true-hd"

.field public static final VOAUDIO_UNKNOWN:Ljava/lang/String; = "audio/x-unknown"

.field public static final VOAUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final VOAUDIO_WEBM:Ljava/lang/String; = "audio/webm"

.field public static final VOBASE_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final VOBASE_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final VOVIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final VOVIDEO_H264:Ljava/lang/String; = "video/avc"

.field public static final VOVIDEO_H265:Ljava/lang/String; = "video/hevc"

.field public static final VOVIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final VOVIDEO_MP4V:Ljava/lang/String; = "video/mp4v-es"

.field public static final VOVIDEO_MPEG:Ljava/lang/String; = "video/mpeg"

.field public static final VOVIDEO_MPEG2:Ljava/lang/String; = "video/mpeg2"

.field public static final VOVIDEO_UNKNOWN:Ljava/lang/String; = "video/x-unknown"

.field public static final VOVIDEO_VC1:Ljava/lang/String; = "video/wvc1"

.field public static final VOVIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final VOVIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final VOVIDEO_WEBM:Ljava/lang/String; = "video/webm"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 120
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 121
    invoke-static {v3}, Lcom/visualon/OSMPUtils/voMimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 122
    invoke-static {v3}, Lcom/visualon/OSMPUtils/voMimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getDefaultCodecFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "video/avc"

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "avc1"

    return-object p0

    :cond_1
    const-string v1, "video/hevc"

    .line 180
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "hev1"

    return-object p0

    :cond_2
    const-string v1, "video/x-vnd.on2.vp9"

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "vp9"

    return-object p0

    :cond_3
    const-string v1, "video/x-vnd.on2.vp8"

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "vp8"

    return-object p0

    :cond_4
    const-string v1, "audio/mp4a-latm"

    .line 186
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "mp4a"

    return-object p0

    :cond_5
    const-string v1, "audio/ac3"

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "ac-3"

    return-object p0

    :cond_6
    const-string v1, "audio/eac3"

    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "ec-3"

    return-object p0

    :cond_7
    const-string v1, "audio/eac3-joc"

    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "ec+3"

    return-object p0

    :cond_8
    const-string v1, "audio/vnd.dts"

    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "dtsc"

    return-object p0

    :cond_9
    const-string v1, "audio/vnd.dts.hd"

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "dtsh"

    return-object p0

    :cond_a
    const-string v1, "audio/opus"

    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, "opus"

    return-object p0

    :cond_b
    const-string v1, "audio/vorbis"

    .line 200
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "vorbis"

    return-object p0

    :cond_c
    return-object v0
.end method

.method public static getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "avc1"

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v1, "hev1"

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v1, "vp9"

    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "vp09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v1, "vp8"

    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "vp08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v1, "mp4a"

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_5
    const-string v1, "ac-3"

    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "dac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "ec-3"

    .line 152
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "dec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "ec+3"

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_8
    const-string v1, "dtsc"

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "dtse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    const-string v1, "dtsh"

    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "dtsl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    const-string v1, "opus"

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, "audio/opus"

    return-object p0

    :cond_b
    const-string v1, "vorbis"

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "audio/vorbis"

    return-object p0

    :cond_c
    return-object v0

    :cond_d
    :goto_0
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :cond_e
    :goto_1
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_f
    :goto_2
    const-string p0, "audio/eac3"

    return-object p0

    :cond_10
    :goto_3
    const-string p0, "audio/ac3"

    return-object p0

    :cond_11
    :goto_4
    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    :cond_12
    :goto_5
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_13
    :goto_6
    const-string p0, "video/hevc"

    return-object p0

    :cond_14
    :goto_7
    const-string p0, "video/avc"

    return-object p0
.end method

.method private static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 100
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 101
    invoke-static {v3}, Lcom/visualon/OSMPUtils/voMimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    invoke-static {v3}, Lcom/visualon/OSMPUtils/voMimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voMimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 1

    .line 86
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voMimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
