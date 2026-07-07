.class public Lcom/google/android/gms/cast/framework/media/MediaNotificationService;
.super Landroid/app/Service;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;,
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private zzcb:Landroid/app/Notification;

.field private zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private zzpm:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private zzps:Landroid/content/ComponentName;

.field private zzpt:Landroid/content/ComponentName;

.field private zzpu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private zzpv:[I

.field private zzpw:J

.field private zzpx:Lcom/google/android/gms/cast/framework/media/internal/zza;

.field private zzpy:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzpz:Landroid/content/res/Resources;

.field private zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

.field private zzqb:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

.field private zzqc:Landroid/app/NotificationManager;

.field private zzqd:Lcom/google/android/gms/cast/framework/CastContext;

.field private final zzqe:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 288
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaNotificationService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpu:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzh;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqe:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static isNotificationOptionsValid(Lcom/google/android/gms/cast/framework/CastOptions;)Z
    .locals 6

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcs()Lcom/google/android/gms/cast/framework/media/zzc;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Lcom/google/android/gms/cast/framework/media/zzc;)Ljava/util/List;

    move-result-object v2

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzb(Lcom/google/android/gms/cast/framework/media/zzc;)[I

    move-result-object p0

    if-eqz v2, :cond_4

    .line 86
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_3

    .line 90
    sget-object v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-class v4, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " provides more than 5 actions."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    .line 87
    :cond_4
    :goto_0
    sget-object v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-class v4, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " doesn\'t provide any action."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p0, :cond_9

    .line 96
    array-length v3, p0

    if-nez v3, :cond_5

    goto :goto_5

    .line 101
    :cond_5
    array-length v3, p0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_8

    aget v5, p0, v4

    if-ltz v5, :cond_7

    if-lt v5, v2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 103
    :cond_7
    :goto_4
    sget-object p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    .line 104
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "provides a compact view action whose index is out of bounds."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    const/4 p0, 0x1

    goto :goto_7

    .line 97
    :cond_9
    :goto_5
    sget-object p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const-class v2, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " doesn\'t provide any actions for compact view."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    const/4 p0, 0x0

    :goto_7
    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqd:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqb:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/cast/framework/media/zzc;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/framework/media/zzc;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/media/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 111
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/cast/framework/media/zzc;->getNotificationActions()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 114
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getNotificationActions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/media/zzc;

    .line 115
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 116
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbt()V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/cast/framework/media/zzc;)[I
    .locals 4

    .line 119
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/cast/framework/media/zzc;->getCompactViewActionIndices()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 122
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getCompactViewActionIndices"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/media/zzc;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 124
    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzbt()V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqb:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzqx:Landroid/graphics/Bitmap;

    .line 132
    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "cast_media_notification"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 136
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqh:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 137
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    const-string v3, "targetActivity"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 148
    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 151
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcs()Lcom/google/android/gms/cast/framework/media/zzc;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 155
    sget-object v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v5, "actionsProvider != null"

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzb(Lcom/google/android/gms/cast/framework/media/zzc;)[I

    move-result-object v2

    .line 158
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpv:[I

    .line 160
    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zza(Lcom/google/android/gms/cast/framework/media/zzc;)Ljava/util/List;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpu:Ljava/util/List;

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 163
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 164
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 165
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 167
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.google.android.gms.cast.framework.action.REWIND"

    .line 168
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 169
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_6

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzv(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    goto :goto_5

    .line 172
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 174
    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 175
    new-instance v5, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 177
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    .line 178
    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpu:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 181
    :cond_7
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "actionsProvider == null"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpu:Ljava/util/List;

    .line 184
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpu:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzv(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v1

    .line 188
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpv:[I

    .line 189
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationCompat$Action;

    .line 190
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_7

    .line 192
    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_b

    .line 193
    new-instance v1, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v1}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpv:[I

    .line 194
    invoke-virtual {v1, v2}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqf:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 195
    invoke-virtual {v1, v2}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 197
    :cond_b
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzcb:Landroid/app/Notification;

    return-void
.end method

.method static synthetic zzbu()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    .line 285
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method private final zzv(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 199
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "com.google.android.gms.cast.framework.action.FORWARD"

    const-string v4, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const-string v5, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    const/4 v8, 0x1

    const-string v9, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    const-string v10, "com.google.android.gms.cast.framework.action.REWIND"

    const/4 v11, 0x0

    const/4 v12, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x6

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v12, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v12, 0x4

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v12, 0x3

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v12, 0x2

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v12, 0x1

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v12, 0x0

    :goto_0
    const-wide/16 v13, 0x7530

    const-wide/16 v15, 0x2710

    const/high16 v2, 0x8000000

    const-string v6, "googlecast-extra_skip_step_ms"

    const/16 v17, 0x0

    packed-switch v12, :pswitch_data_0

    .line 282
    sget-object v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v11

    const-string v1, "Action: %s is not a pre-defined action."

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v17

    .line 237
    :pswitch_0
    iget-wide v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpw:J

    .line 238
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    invoke-virtual {v1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 242
    invoke-static {v0, v11, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 243
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForwardDrawableResId()I

    move-result v2

    .line 244
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcl()I

    move-result v3

    cmp-long v6, v4, v15

    if-nez v6, :cond_7

    .line 246
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward10DrawableResId()I

    move-result v2

    .line 247
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcm()I

    move-result v3

    goto :goto_1

    :cond_7
    cmp-long v6, v4, v13

    if-nez v6, :cond_8

    .line 249
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward30DrawableResId()I

    move-result v2

    .line 250
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcn()I

    move-result v3

    .line 251
    :cond_8
    :goto_1
    new-instance v4, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    .line 252
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 253
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1

    .line 200
    :pswitch_1
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqg:Z

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 202
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v1

    .line 203
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result v3

    goto :goto_2

    .line 204
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v1

    .line 205
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzch()I

    move-result v3

    :goto_2
    if-eqz v2, :cond_a

    goto :goto_3

    .line 206
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v1

    :goto_3
    if-eqz v2, :cond_b

    goto :goto_4

    .line 207
    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzci()I

    move-result v3

    .line 208
    :goto_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    invoke-static {v0, v11, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 211
    new-instance v4, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    .line 212
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3, v2}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 213
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1

    .line 274
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 276
    invoke-static {v0, v11, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 277
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 278
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 279
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcr()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 280
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1

    .line 226
    :pswitch_3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqj:Z

    if-eqz v1, :cond_c

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    invoke-static {v0, v11, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    :cond_c
    move-object/from16 v1, v17

    .line 232
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 233
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 234
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzck()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 235
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1

    .line 215
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqi:Z

    if-eqz v1, :cond_d

    .line 218
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 220
    invoke-static {v0, v11, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    :cond_d
    move-object/from16 v1, v17

    .line 221
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 223
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcj()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 224
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1

    .line 255
    :pswitch_5
    iget-wide v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpw:J

    .line 256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v1, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 260
    invoke-static {v0, v11, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 261
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewindDrawableResId()I

    move-result v2

    .line 262
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzco()I

    move-result v5

    cmp-long v6, v3, v15

    if-nez v6, :cond_e

    .line 264
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind10DrawableResId()I

    move-result v2

    .line 265
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcp()I

    move-result v5

    goto :goto_5

    :cond_e
    cmp-long v6, v3, v13

    if-nez v6, :cond_f

    .line 267
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind30DrawableResId()I

    move-result v2

    .line 268
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcq()I

    move-result v5

    .line 269
    :cond_f
    :goto_5
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    .line 270
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 271
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "notification"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqc:Landroid/app/NotificationManager;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqd:Lcom/google/android/gms/cast/framework/CastContext;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpm:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    .line 10
    new-instance v1, Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzps:Landroid/content/ComponentName;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Landroid/content/ComponentName;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpw:J

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpz:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpd:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzcg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 19
    new-instance v1, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpy:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 20
    new-instance v0, Lcom/google/android/gms/cast/framework/media/internal/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpy:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpx:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqe:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    const-string v2, "cast_media_notification"

    const-string v3, "Cast"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqc:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpx:Lcom/google/android/gms/cast/framework/media/internal/zza;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zza;->clear()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpt:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqe:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unregistering trampoline BroadcastReceiver failed"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqc:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "extra_media_info"

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/MediaInfo;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v3

    const-string v4, "extra_remote_media_client_player_state"

    const/4 v5, 0x0

    .line 33
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "extra_cast_device"

    .line 34
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/cast/CastDevice;

    .line 35
    new-instance v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    const/4 v14, 0x2

    const/4 v13, 0x1

    if-ne v4, v14, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 36
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v9

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 37
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v11

    const-string v2, "extra_media_session_token"

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v2, "extra_can_skip_next"

    .line 40
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "extra_can_skip_prev"

    .line 41
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object v7, v15

    const/4 v6, 0x1

    move v13, v2

    const/4 v2, 0x2

    move v14, v4

    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    const-string v4, "extra_media_notification_force_update"

    .line 43
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    if-eqz v1, :cond_1

    .line 45
    iget-boolean v4, v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqg:Z

    iget-boolean v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqg:Z

    if-ne v4, v7, :cond_1

    iget v4, v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    iget v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    if-ne v4, v7, :cond_1

    iget-object v4, v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    .line 46
    invoke-static {v4, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqh:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqh:Ljava/lang/String;

    .line 47
    invoke-static {v4, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqi:Z

    iget-boolean v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqi:Z

    if-ne v4, v7, :cond_1

    iget-boolean v4, v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqj:Z

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzqj:Z

    if-ne v4, v1, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_3

    .line 49
    :cond_2
    iput-object v15, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqa:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzbt()V

    .line 51
    :cond_3
    new-instance v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    .line 53
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpm:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v4, :cond_4

    .line 54
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpy:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v4, v3, v7}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v3

    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 56
    :goto_2
    invoke-direct {v1, v3}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 57
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzqb:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;

    if-eqz v3, :cond_6

    .line 58
    iget-object v4, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzqw:Landroid/net/Uri;

    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzqw:Landroid/net/Uri;

    invoke-static {v4, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-nez v5, :cond_7

    .line 60
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpx:Lcom/google/android/gms/cast/framework/media/internal/zza;

    new-instance v4, Lcom/google/android/gms/cast/framework/media/zzi;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/cast/framework/media/zzi;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/cast/framework/media/internal/zza;->zza(Lcom/google/android/gms/cast/framework/media/internal/zzc;)V

    .line 61
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzpx:Lcom/google/android/gms/cast/framework/media/internal/zza;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zzb;->zzqw:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/framework/media/internal/zza;->zza(Landroid/net/Uri;)Z

    .line 62
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->zzcb:Landroid/app/Notification;

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->startForeground(ILandroid/app/Notification;)V

    return v2
.end method
