.class public final Lcom/google/android/gms/internal/cast/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final zzma:Lcom/google/android/gms/internal/cast/zzf;

.field private final zzmb:Ljava/lang/Runnable;

.field private final zzmc:Landroid/content/SharedPreferences;

.field private zzmd:Lcom/google/android/gms/internal/cast/zzk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ApplicationAnalytics"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmc:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzg;->zzma:Lcom/google/android/gms/internal/cast/zzf;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzdr;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzdr;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->handler:Landroid/os/Handler;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/cast/zzj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzj;-><init>(Lcom/google/android/gms/internal/cast/zzg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmb:Ljava/lang/Runnable;

    return-void
.end method

.method private static getApplicationId()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzk;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    return-object p0
.end method

.method private final zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzg;->zzp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Use the existing ApplicationAnalyticsSession if it is available and valid."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzk;->zza(Landroid/content/SharedPreferences;)Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    .line 34
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzg;->zzp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    sget-object p1, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Use the restored ApplicationAnalyticsSession if it is valid."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iget-wide p1, p1, Lcom/google/android/gms/internal/cast/zzk;->zzmj:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    sput-wide p1, Lcom/google/android/gms/internal/cast/zzk;->zzmi:J

    return-void

    .line 38
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "The restored ApplicationAnalyticsSession is not valid, create a new one."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zzbb()Lcom/google/android/gms/internal/cast/zzk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzg;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzk;->zzml:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzg;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzg;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzf(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzg;->zzb(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method private final zzau()V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmb:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final zzav()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzaw()Z
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The analytics session is null when matching with application ID."

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 46
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzg;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iget-object v3, v3, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iget-object v3, v3, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    .line 48
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 49
    :cond_2
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "The analytics session doesn\'t match the application ID %s"

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private final zzax()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmc:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzk;->zzb(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic zzay()Lcom/google/android/gms/cast/internal/Logger;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzg;)Lcom/google/android/gms/internal/cast/zzf;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzma:Lcom/google/android/gms/internal/cast/zzf;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    .line 65
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzn;->zzb(Lcom/google/android/gms/internal/cast/zzk;I)Lcom/google/android/gms/internal/cast/zzjm$zzj;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzg;->zzma:Lcom/google/android/gms/internal/cast/zzf;

    sget-object v0, Lcom/google/android/gms/internal/cast/zzhb;->zzasx:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzg;->zzav()V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzg(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/cast/zzg;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzg;->zzax()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/cast/zzg;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzg;->zzau()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/cast/zzg;)Landroid/content/SharedPreferences;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmc:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final zzf(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 3

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Create a new ApplicationAnalyticsSession based on CastSession"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzk;->zzbb()Lcom/google/android/gms/internal/cast/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzg;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->zze()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzk;->zzbe:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/cast/zzg;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzg;->zzav()V

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzg;->zzaw()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzk;->zzbe:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->zze()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->zze()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/cast/zzk;->zzbe:Ljava/lang/String;

    :cond_1
    return-void

    .line 27
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The analyticsSession should not be null for logging. Create a dummy one."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzg;->zzf(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method private final zzp(Ljava/lang/String;)Z
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzg;->zzaw()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iget-object v2, v2, Lcom/google/android/gms/internal/cast/zzk;->zzml:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    iget-object v2, v2, Lcom/google/android/gms/internal/cast/zzk;->zzml:Ljava/lang/String;

    .line 55
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 56
    :cond_2
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/cast/zzg;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "The analytics session doesn\'t match the receiver session ID %s."

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/cast/framework/SessionManager;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/cast/zzl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/zzl;-><init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzi;)V

    .line 8
    const-class v1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    return-void
.end method

.method final synthetic zzaz()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzg;->zzmd:Lcom/google/android/gms/internal/cast/zzk;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzn;->zza(Lcom/google/android/gms/internal/cast/zzk;)Lcom/google/android/gms/internal/cast/zzjm$zzj;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzg;->zzma:Lcom/google/android/gms/internal/cast/zzf;

    sget-object v2, Lcom/google/android/gms/internal/cast/zzhb;->zzass:Lcom/google/android/gms/internal/cast/zzhb;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/cast/zzf;->zza(Lcom/google/android/gms/internal/cast/zzjm$zzj;Lcom/google/android/gms/internal/cast/zzhb;)V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzg;->zzau()V

    return-void
.end method
