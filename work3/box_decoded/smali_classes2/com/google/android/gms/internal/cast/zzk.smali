.class public final Lcom/google/android/gms/internal/cast/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field public static zzmi:J

.field private static final zzy:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public zzbe:Ljava/lang/String;

.field public zzmj:J

.field public zzmk:I

.field public zzml:Ljava/lang/String;

.field public zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "ApplicationAnalyticsSession"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzk;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/cast/zzk;->zzmi:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-wide v0, Lcom/google/android/gms/internal/cast/zzk;->zzmi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzmj:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzmk:I

    return-void
.end method

.method public static zza(Landroid/content/SharedPreferences;)Lcom/google/android/gms/internal/cast/zzk;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/cast/zzk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/cast/zzk;-><init>()V

    const-string v2, "application_id"

    .line 11
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const-string v3, ""

    .line 13
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    const-string v2, "receiver_metrics_id"

    .line 14
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v0

    .line 16
    :cond_2
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/cast/zzk;->zzbe:Ljava/lang/String;

    const-string v2, "analytics_session_id"

    .line 17
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return-object v0

    :cond_3
    const-wide/16 v4, 0x0

    .line 19
    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/cast/zzk;->zzmj:J

    const-string v2, "event_sequence_number"

    .line 20
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    return-object v0

    :cond_4
    const/4 v4, 0x0

    .line 22
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/cast/zzk;->zzmk:I

    const-string v2, "receiver_session_id"

    .line 23
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    return-object v0

    .line 25
    :cond_5
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/cast/zzk;->zzml:Ljava/lang/String;

    return-object v1
.end method

.method public static zzbb()Lcom/google/android/gms/internal/cast/zzk;
    .locals 5

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzk;-><init>()V

    .line 6
    sget-wide v1, Lcom/google/android/gms/internal/cast/zzk;->zzmi:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/google/android/gms/internal/cast/zzk;->zzmi:J

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/SharedPreferences;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzk;->zzy:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Save the ApplicationAnalyticsSession to SharedPreferences %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzz:Ljava/lang/String;

    const-string v1, "application_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzbe:Ljava/lang/String;

    const-string v1, "receiver_metrics_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzmj:J

    const-string v2, "analytics_session_id"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzmk:I

    const-string v1, "event_sequence_number"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzk;->zzml:Ljava/lang/String;

    const-string v1, "receiver_session_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
