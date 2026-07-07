.class public final Lcom/google/android/gms/cast/framework/media/internal/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# static fields
.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private zzal:Lcom/google/android/gms/cast/CastDevice;

.field private final zzjt:Landroid/content/Context;

.field private zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzna:Lcom/google/android/gms/internal/cast/zzax;

.field private final zzum:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzun:Landroid/content/ComponentName;

.field private final zzuo:Lcom/google/android/gms/cast/framework/media/internal/zza;

.field private final zzup:Lcom/google/android/gms/cast/framework/media/internal/zza;

.field private final zzuq:Ljava/lang/Runnable;

.field private zzur:Landroid/support/v4/media/session/MediaSessionCompat;

.field private zzus:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private zzut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 273
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaSessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzax;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzna:Lcom/google/android/gms/internal/cast/zzax;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    new-instance p3, Landroid/content/ComponentName;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzun:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzun:Landroid/content/ComponentName;

    .line 11
    :goto_0
    new-instance p2, Lcom/google/android/gms/cast/framework/media/internal/zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/cast/framework/media/internal/zza;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzuo:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 12
    new-instance p3, Lcom/google/android/gms/cast/framework/media/internal/zzm;

    invoke-direct {p3, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzm;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzk;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/cast/framework/media/internal/zza;->zza(Lcom/google/android/gms/cast/framework/media/internal/zzc;)V

    .line 13
    new-instance p2, Lcom/google/android/gms/cast/framework/media/internal/zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/cast/framework/media/internal/zza;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzup:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 14
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzp;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzk;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/media/internal/zza;->zza(Lcom/google/android/gms/cast/framework/media/internal/zzc;)V

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdr;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzdr;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->handler:Landroid/os/Handler;

    .line 16
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzn;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzk;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzuq:Ljava/lang/Runnable;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;

    move-result-object p1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/internal/zzk;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object p0
.end method

.method private final zza(ILcom/google/android/gms/cast/MediaInfo;)V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 170
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 171
    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 173
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 174
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 175
    :cond_1
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 176
    invoke-virtual {v5, p1, v2, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    const-wide/16 v5, 0x200

    .line 177
    invoke-virtual {p1, v5, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 180
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzun:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 183
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzun:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 186
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 188
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_5

    .line 189
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object p1

    .line 191
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdg()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    const-string v0, "com.google.android.gms.cast.metadata.TITLE"

    .line 192
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.metadata.TITLE"

    .line 193
    invoke-virtual {p2, v6, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    .line 194
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.media.metadata.DISPLAY_TITLE"

    .line 195
    invoke-virtual {p2, v5, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    const-string v0, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 196
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 197
    invoke-virtual {p2, v5, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    const-string v0, "android.media.metadata.DURATION"

    .line 198
    invoke-virtual {p2, v0, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 201
    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzuo:Lcom/google/android/gms/cast/framework/media/internal/zza;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/framework/media/internal/zza;->zza(Landroid/net/Uri;)Z

    goto :goto_1

    .line 204
    :cond_3
    invoke-direct {p0, v1, v4}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(Landroid/graphics/Bitmap;I)V

    :goto_1
    const/4 p2, 0x3

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(Lcom/google/android/gms/cast/MediaMetadata;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 208
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzup:Lcom/google/android/gms/cast/framework/media/internal/zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/media/internal/zza;->zza(Landroid/net/Uri;)Z

    return-void

    .line 209
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(Landroid/graphics/Bitmap;I)V

    :cond_5
    return-void
.end method

.method private final zza(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    const-string p2, "android.media.metadata.DISPLAY_ICON"

    if-eqz p1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdg()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 219
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    .line 220
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 223
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdg()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 226
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdg()Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    const-string v1, "android.media.metadata.ALBUM_ART"

    .line 231
    invoke-virtual {p2, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 233
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_3
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/internal/zzk;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static zzb(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v1

    const/high16 v4, 0x41100000    # 9.0f

    mul-float v4, v4, v3

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v5, v4, v2

    .line 23
    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 24
    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    int-to-float v2, v2

    add-float/2addr v2, v5

    invoke-direct {v6, v7, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_1

    .line 27
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    :cond_1
    invoke-static {v1, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 29
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual {v2, p0, v0, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private final zzdg()Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 241
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    return-object v0

    .line 242
    :cond_1
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-object v1
.end method

.method private final zzdh()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Stopping notification service."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private final zzdi()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzuq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private final zzh(Z)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getEnableReconnectionService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzuq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/cast/framework/ReconnectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzuq:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final onAdBreakStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzg(Z)V

    return-void
.end method

.method public final onMetadataUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzg(Z)V

    return-void
.end method

.method public final onPreloadStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzg(Z)V

    return-void
.end method

.method public final onQueueStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzg(Z)V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public final onStatusUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzg(Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 6

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzut:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 36
    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzal:Lcom/google/android/gms/cast/CastDevice;

    .line 38
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 40
    invoke-virtual {p1, p2, v0, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 41
    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const/4 v2, 0x0

    .line 46
    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaSessionEnabled()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 48
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const-string v5, "CastMediaSession"

    invoke-direct {v1, v4, v5, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 49
    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzal:Lcom/google/android/gms/cast/CastDevice;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzal:Lcom/google/android/gms/cast/CastDevice;

    .line 53
    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 54
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 55
    invoke-virtual {p2, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 58
    :cond_2
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/internal/zzo;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzk;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzus:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 59
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 61
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzna:Lcom/google/android/gms/internal/cast/zzax;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzax;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 62
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzut:Z

    .line 63
    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzg(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method final synthetic zzdj()V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzh(Z)V

    return-void
.end method

.method public final zzg(Z)V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getLoadingItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v4, 0x0

    .line 123
    :cond_6
    invoke-direct {p0, v4, v0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_7

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdh()V

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdi()V

    return-void

    :cond_7
    if-eqz v4, :cond_11

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzal:Lcom/google/android/gms/cast/CastDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzum:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->isNotificationOptionsValid(Lcom/google/android/gms/cast/framework/CastOptions;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_4

    .line 132
    :cond_8
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const-class v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "extra_media_notification_force_update"

    .line 133
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 135
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    const-string v4, "extra_media_info"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 138
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result p1

    const-string v4, "extra_remote_media_client_player_state"

    .line 139
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzal:Lcom/google/android/gms/cast/CastDevice;

    const-string v4, "extra_cast_device"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_a

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_1

    .line 143
    :cond_9
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    :goto_1
    const-string v4, "extra_media_session_token"

    .line 144
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v4

    if-eq v4, v1, :cond_e

    if-eq v4, v2, :cond_e

    if-eq v4, v3, :cond_e

    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 154
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    .line 156
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-ge v2, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_e
    const/4 p1, 0x1

    const/4 v3, 0x1

    :goto_3
    const-string v2, "extra_can_skip_next"

    .line 158
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_can_skip_prev"

    .line 159
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    sget-object p1, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Starting notification service."

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_f

    .line 162
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4

    .line 163
    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result p1

    if-nez p1, :cond_11

    .line 165
    invoke-direct {p0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzh(Z)V

    :cond_11
    return-void
.end method

.method public final zzv(I)V
    .locals 4

    .line 65
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzut:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzut:Z

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 70
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzjt:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 72
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzna:Lcom/google/android/gms/internal/cast/zzax;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/zzax;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzuo:Lcom/google/android/gms/cast/framework/media/internal/zza;

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zza;->clear()V

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzup:Lcom/google/android/gms/cast/framework/media/internal/zza;

    if-eqz v1, :cond_4

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/internal/zza;->clear()V

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 82
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zza(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 85
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzur:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 86
    :cond_5
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzkw:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 87
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzal:Lcom/google/android/gms/cast/CastDevice;

    .line 88
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzus:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdh()V

    if-nez p1, :cond_6

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzk;->zzdi()V

    :cond_6
    return-void
.end method
