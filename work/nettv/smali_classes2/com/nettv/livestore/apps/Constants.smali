.class public Lcom/nettv/livestore/apps/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final API_KEY:Ljava/lang/String;

.field public static final APP_PNAME:Ljava/lang/String; = "com.nettv.livestore"

.field public static final CHANNEL_TYPE:I = 0x0

.field public static final EPISODE_SUBTITLE_SEARCH:Ljava/lang/String;

.field public static final IMDB_API:Ljava/lang/String;

.field public static final IMDB_API_SERIES:Ljava/lang/String;

.field public static final IMDB_IMAGE_PREF:Ljava/lang/String;

.field public static final IMDB_KEY:Ljava/lang/String; = "d96abf17668601f56b3d7b8336a61933"

.field public static final NO_MEDIA_TYPE:I = -0x1

.field public static final PASSWORD:Ljava/lang/String;

.field public static final PERSON_API:Ljava/lang/String;

.field public static final SERIES_TYPE:I = 0x2

.field public static final SUBTITLE_DOWNLOAD:Ljava/lang/String;

.field public static final SUBTITLE_LOGIN:Ljava/lang/String;

.field public static final SUBTITLE_SEARCH:Ljava/lang/String;

.field public static final USERNAME:Ljava/lang/String;

.field public static final VIDEO_TYPE:I = 0x1

.field public static final WEB_URL:Ljava/lang/String; = ""

.field public static final add_group:Ljava/lang/String; = "add_group"

.field public static final all_id:Ljava/lang/String; = "all_id"

.field public static final create_request_code:I = 0x3e8

.field public static final date_mils:J = 0x11940L

.field public static final delete_request_code:I = 0x7d0

.field public static final fav_id:Ljava/lang/String; = "fav_id"

.field public static final lock_id:Ljava/lang/String; = "lock_id"

.field public static final resume_id:Ljava/lang/String; = "resume_id"

.field public static final second_create_url:Ljava/lang/String;

.field public static final second_delete_url:Ljava/lang/String;

.field public static final second_request_code:I = 0xbb8

.field public static final second_response_url:Ljava/lang/String;

.field public static final second_update_control:Ljava/lang/String;

.field public static stampFormat:Ljava/text/SimpleDateFormat;

.field public static xxx_live_categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static xxx_vod_categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_live_categories:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nettv/livestore/apps/Constants;->xxx_vod_categories:Ljava/util/List;

    const/16 v0, 0x30

    new-array v1, v0, [B

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    const-string v1, "https://cameleon.vip/ibonet/auth.php"

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->second_response_url:Ljava/lang/String;

    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    const-string v1, "https://cameleon.vip/ibonet/playlists.php"

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->second_create_url:Ljava/lang/String;

    new-array v1, v0, [B

    .line 5
    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->second_delete_url:Ljava/lang/String;

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    const-string v1, "https://cameleon.vip/ibonet/update.php"

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->second_update_control:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->stampFormat:Ljava/text/SimpleDateFormat;

    new-array v1, v0, [B

    .line 8
    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->IMDB_API:Ljava/lang/String;

    new-array v1, v0, [B

    .line 9
    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->IMDB_API_SERIES:Ljava/lang/String;

    new-array v1, v0, [B

    .line 10
    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->PERSON_API:Ljava/lang/String;

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 11
    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->IMDB_IMAGE_PREF:Ljava/lang/String;

    new-array v1, v0, [B

    .line 12
    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->SUBTITLE_LOGIN:Ljava/lang/String;

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 13
    fill-array-data v2, :array_9

    invoke-static {v2}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/nettv/livestore/apps/Constants;->USERNAME:Ljava/lang/String;

    new-array v1, v1, [B

    .line 14
    fill-array-data v1, :array_a

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->PASSWORD:Ljava/lang/String;

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 15
    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->SUBTITLE_SEARCH:Ljava/lang/String;

    const/16 v1, 0x50

    new-array v1, v1, [B

    .line 16
    fill-array-data v1, :array_c

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->EPISODE_SUBTITLE_SEARCH:Ljava/lang/String;

    new-array v1, v0, [B

    .line 17
    fill-array-data v1, :array_d

    invoke-static {v1}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/apps/Constants;->SUBTITLE_DOWNLOAD:Ljava/lang/String;

    new-array v0, v0, [B

    .line 18
    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/nettv/livestore/utils/EnigmaUtils;->enigmatization([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nettv/livestore/apps/Constants;->API_KEY:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        -0x1et
        0x54t
        -0x18t
        -0x30t
        0x63t
        0x4dt
        -0x18t
        -0xat
        0x15t
        0xet
        0x2et
        -0x42t
        -0x5ft
        0x29t
        0x77t
        0x5t
        0x57t
        0x66t
        0x6dt
        -0x7at
        -0x3at
        0x23t
        -0x7bt
        -0xbt
        0x5et
        0x5t
        0x15t
        -0xet
        0x19t
        0x26t
        0xet
        0x6et
        -0x43t
        0x28t
        0x40t
        0x30t
        0x7at
        0x18t
        0x79t
        -0x27t
        0x0t
        0x38t
        -0x2at
        0x7ct
        -0x4t
        -0x29t
        -0x6bt
        -0x77t
    .end array-data

    :array_1
    .array-data 1
        -0x1et
        0x54t
        -0x18t
        -0x30t
        0x63t
        0x4dt
        -0x18t
        -0xat
        0x15t
        0xet
        0x2et
        -0x42t
        -0x5ft
        0x29t
        0x77t
        0x5t
        -0xdt
        -0x45t
        0x2ft
        0x56t
        0x1dt
        0x78t
        0x44t
        0x26t
        0x1bt
        0x5ft
        0x1t
        0x3bt
        0x4at
        -0x8t
        -0x7ft
        -0x1bt
        -0x19t
        0x1ft
        0x7dt
        -0xct
        0xbt
        0x27t
        -0x4dt
        -0x70t
        0x69t
        0x6t
        -0x1ct
        -0x56t
        0x66t
        -0x3dt
        0x4ct
        0x22t
    .end array-data

    :array_2
    .array-data 1
        -0x1et
        0x54t
        -0x18t
        -0x30t
        0x63t
        0x4dt
        -0x18t
        -0xat
        0x15t
        0xet
        0x2et
        -0x42t
        -0x5ft
        0x29t
        0x77t
        0x5t
        -0xdt
        -0x45t
        0x2ft
        0x56t
        0x1dt
        0x78t
        0x44t
        0x26t
        0x1bt
        0x5ft
        0x1t
        0x3bt
        0x4at
        -0x8t
        -0x7ft
        -0x1bt
        0x37t
        -0x3ft
        -0x3ct
        -0x18t
        0x52t
        -0x62t
        0x19t
        0x38t
        -0x2at
        0x61t
        0xft
        0x38t
        -0x47t
        -0x46t
        -0x4dt
        -0x4t
    .end array-data

    :array_3
    .array-data 1
        -0x1et
        0x54t
        -0x18t
        -0x30t
        0x63t
        0x4dt
        -0x18t
        -0xat
        0x15t
        0xet
        0x2et
        -0x42t
        -0x5ft
        0x29t
        0x77t
        0x5t
        0x36t
        0x6at
        -0x20t
        -0x21t
        -0x7ft
        -0x7ft
        -0x3et
        0x3at
        -0x28t
        -0x3t
        -0x67t
        -0x3ft
        0x1at
        0x3ft
        0xft
        -0x1dt
        -0x71t
        -0x34t
        0x20t
        0x51t
        -0x59t
        0x21t
        0x48t
        0x2t
        -0x25t
        0x52t
        -0x57t
        0x65t
        -0x2ct
        0x71t
        0x2bt
        0x7bt
    .end array-data

    :array_4
    .array-data 1
        -0x34t
        -0x24t
        -0x51t
        0x7t
        -0x59t
        0x4ft
        -0x4at
        -0x7dt
        0x30t
        0x3dt
        -0x7ct
        -0xbt
        0x13t
        -0x6at
        -0x7bt
        0x17t
        0xbt
        -0x2et
        0x5ct
        -0x72t
        0x77t
        -0xat
        0x61t
        0x5dt
        0x1ft
        0x1bt
        0x7et
        0x45t
        0x6bt
        -0x3ft
        -0x1ct
        -0x66t
        -0x39t
        0x20t
        -0x1et
        -0x36t
        0x4bt
        0x7at
        0x18t
        -0x77t
        0x13t
        -0x1ct
        0x7ft
        -0x46t
        0x70t
        0x50t
        -0x36t
        -0x6et
    .end array-data

    :array_5
    .array-data 1
        -0x34t
        -0x24t
        -0x51t
        0x7t
        -0x59t
        0x4ft
        -0x4at
        -0x7dt
        0x30t
        0x3dt
        -0x7ct
        -0xbt
        0x13t
        -0x6at
        -0x7bt
        0x17t
        0x46t
        0x25t
        0x77t
        -0x6et
        0x73t
        -0x71t
        -0x17t
        -0x1ft
        0x5ct
        0x10t
        -0x62t
        -0x80t
        0x68t
        -0x1ft
        -0x44t
        -0x28t
        0x2at
        -0x1et
        0x6ft
        -0x59t
        0x45t
        0x79t
        -0x63t
        0xat
        0xct
        -0x4t
        -0x35t
        -0x4ct
        0xct
        -0x23t
        0x68t
        0x7t
    .end array-data

    :array_6
    .array-data 1
        -0x34t
        -0x24t
        -0x51t
        0x7t
        -0x59t
        0x4ft
        -0x4at
        -0x7dt
        0x30t
        0x3dt
        -0x7ct
        -0xbt
        0x13t
        -0x6at
        -0x7bt
        0x17t
        0x1dt
        0x4bt
        0x22t
        -0x55t
        0x75t
        -0x6bt
        -0x65t
        0x7t
        -0x20t
        -0x1t
        0x3ct
        -0x48t
        0x29t
        -0x3et
        -0x20t
        -0xat
        -0x23t
        0x25t
        0x2bt
        -0x26t
        0x76t
        -0x29t
        0x71t
        -0x2ct
        -0x73t
        0x60t
        -0xet
        -0x6ct
        -0x64t
        -0x6dt
        -0x73t
        0x5t
    .end array-data

    :array_7
    .array-data 1
        -0x25t
        0x30t
        0x22t
        -0x2bt
        -0x73t
        0x1ft
        -0x53t
        0x64t
        -0x10t
        -0x3ft
        0x20t
        0x8t
        -0x7bt
        -0x62t
        -0x49t
        0x5bt
        -0x76t
        0x17t
        -0x37t
        0x3dt
        0x50t
        -0x68t
        -0x4t
        0x2dt
        0x6et
        -0x3bt
        0x77t
        0x63t
        0x60t
        -0x52t
        0x3dt
        -0x53t
    .end array-data

    :array_8
    .array-data 1
        -0x18t
        0x5dt
        -0x68t
        0x5dt
        0x1at
        -0x52t
        0x12t
        0x15t
        0xbt
        0x20t
        0x2at
        0x46t
        -0x44t
        0x64t
        0x42t
        -0x2et
        -0x5dt
        0xft
        -0x37t
        -0x43t
        0x7et
        -0x41t
        0x23t
        0x38t
        -0x4ft
        -0x4bt
        0x14t
        0x1ft
        0x79t
        0xct
        -0x4ct
        0x10t
        0x46t
        -0x6ct
        0x3dt
        0x17t
        -0x54t
        -0x1at
        -0x5ft
        -0x19t
        -0x56t
        -0x23t
        0x38t
        0x21t
        0x15t
        -0x35t
        -0x53t
        -0x59t
    .end array-data

    :array_9
    .array-data 1
        0x39t
        -0x3et
        0x7at
        -0x1dt
        -0x40t
        -0x7at
        0x0t
        -0x18t
        -0x2ct
        0x4at
        0x4t
        0x2ct
        0x2ct
        0x2dt
        0x60t
        -0x3ft
    .end array-data

    :array_a
    .array-data 1
        -0x75t
        -0x2bt
        0x6et
        -0x37t
        -0xet
        -0x6dt
        0x60t
        -0x16t
        0x8t
        -0x3dt
        -0x46t
        0x1ft
        -0x12t
        -0x62t
        0x27t
        0x6ct
    .end array-data

    :array_b
    .array-data 1
        -0x18t
        0x5dt
        -0x68t
        0x5dt
        0x1at
        -0x52t
        0x12t
        0x15t
        0xbt
        0x20t
        0x2at
        0x46t
        -0x44t
        0x64t
        0x42t
        -0x2et
        -0x5dt
        0xft
        -0x37t
        -0x43t
        0x7et
        -0x41t
        0x23t
        0x38t
        -0x4ft
        -0x4bt
        0x14t
        0x1ft
        0x79t
        0xct
        -0x4ct
        0x10t
        -0x10t
        -0x1bt
        -0x46t
        0x45t
        0x51t
        0x9t
        0x26t
        0x2ct
        0x4ft
        -0x9t
        -0x9t
        0x1et
        0x1bt
        0x36t
        -0x3at
        0x29t
        0x39t
        -0x28t
        0x65t
        -0x2at
        -0x54t
        -0x48t
        -0x16t
        0x29t
        0x3et
        0xft
        0x41t
        -0x50t
        -0x3at
        -0x29t
        -0x34t
        0x71t
    .end array-data

    :array_c
    .array-data 1
        -0x18t
        0x5dt
        -0x68t
        0x5dt
        0x1at
        -0x52t
        0x12t
        0x15t
        0xbt
        0x20t
        0x2at
        0x46t
        -0x44t
        0x64t
        0x42t
        -0x2et
        -0x5dt
        0xft
        -0x37t
        -0x43t
        0x7et
        -0x41t
        0x23t
        0x38t
        -0x4ft
        -0x4bt
        0x14t
        0x1ft
        0x79t
        0xct
        -0x4ct
        0x10t
        -0x10t
        -0x1bt
        -0x46t
        0x45t
        0x51t
        0x9t
        0x26t
        0x2ct
        0x4ft
        -0x9t
        -0x9t
        0x1et
        0x1bt
        0x36t
        -0x3at
        0x29t
        -0x1t
        0x56t
        -0x79t
        -0x54t
        0x49t
        0x52t
        0x42t
        0x2ft
        0x7bt
        -0x22t
        -0x4ct
        -0xdt
        -0x65t
        0x5dt
        -0x68t
        -0x72t
        0x6et
        -0x8t
        0x20t
        -0x1ft
        -0x68t
        -0x5dt
        0x28t
        -0x28t
        0x43t
        0x1dt
        -0x71t
        -0x7bt
        0xat
        0x66t
        -0x43t
        -0x7at
    .end array-data

    :array_d
    .array-data 1
        -0x18t
        0x5dt
        -0x68t
        0x5dt
        0x1at
        -0x52t
        0x12t
        0x15t
        0xbt
        0x20t
        0x2at
        0x46t
        -0x44t
        0x64t
        0x42t
        -0x2et
        -0x5dt
        0xft
        -0x37t
        -0x43t
        0x7et
        -0x41t
        0x23t
        0x38t
        -0x4ft
        -0x4bt
        0x14t
        0x1ft
        0x79t
        0xct
        -0x4ct
        0x10t
        -0x5ct
        0xct
        0x0t
        -0x49t
        -0x16t
        0x3ct
        0x71t
        -0x12t
        0x7ct
        0x16t
        -0x55t
        0x49t
        -0x75t
        0x7t
        -0x11t
        0x26t
    .end array-data

    :array_e
    .array-data 1
        0x63t
        0x2ct
        -0xat
        0x6bt
        -0x70t
        -0x37t
        0x11t
        0x1t
        -0x52t
        0x6at
        0x49t
        -0x1et
        -0x44t
        -0x33t
        -0x69t
        -0x18t
        -0x3ct
        0x9t
        0x5bt
        0x52t
        -0x20t
        -0x5ft
        -0x67t
        0x3bt
        0x51t
        0x11t
        0x4ft
        -0x69t
        -0x2ct
        -0x62t
        -0x2dt
        -0x62t
        0x77t
        0x69t
        0x54t
        -0x36t
        -0x58t
        0x21t
        -0x6t
        -0x28t
        -0x2et
        0x24t
        -0x60t
        0x32t
        0x1at
        -0x65t
        -0x75t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLiveGroupModels(Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedLiveCategoryModels()Ljava/util/List;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    sget-object v3, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getSeriesGroupModels(Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesCategoryModel()Ljava/util/List;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    sget-object v3, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getVodGroupModels(Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/nettv/livestore/apps/LTVApp;->vod_categories_filter:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceVodCategory()Ljava/util/List;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->vod_categories_filter:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/CategoryModel;

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Lcom/nettv/livestore/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    sget-object v3, Lcom/nettv/livestore/apps/LTVApp;->vod_categories_filter:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setServerTimeOffset(JLjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/nettv/livestore/apps/Constants;->stampFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 2
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    sput-wide p0, Lcom/nettv/livestore/apps/LTVApp;->SEVER_OFFSET:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
