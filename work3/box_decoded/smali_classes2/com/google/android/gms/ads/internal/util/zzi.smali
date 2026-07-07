.class public final Lcom/google/android/gms/ads/internal/util/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/zzf;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzclm:Landroid/content/SharedPreferences;

.field private zzdsy:Z

.field private zzdtl:Z

.field private zzdto:Ljava/lang/String;

.field private zzdux:Z

.field private zzdvi:Z

.field private zzecg:Z

.field private final zzech:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzeci:Lcom/google/android/gms/internal/ads/zzdyz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "*>;"
        }
    .end annotation
.end field

.field private zzecj:Lcom/google/android/gms/internal/ads/zzrk;

.field private zzeck:Landroid/content/SharedPreferences$Editor;

.field private zzecl:Z

.field private zzecm:Ljava/lang/String;

.field private zzecn:Ljava/lang/String;

.field private zzeco:J

.field private zzecp:J

.field private zzecq:J

.field private zzecr:I

.field private zzecs:I

.field private zzect:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzecu:Lorg/json/JSONObject;

.field private zzecv:Ljava/lang/String;

.field private zzecw:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzech:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecj:Lcom/google/android/gms/internal/ads/zzrk;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecl:Z

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdsy:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdtl:Z

    const-string v3, ""

    .line 8
    iput-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdto:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 9
    iput-wide v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeco:J

    .line 10
    iput-wide v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecp:J

    .line 11
    iput-wide v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecq:J

    const/4 v3, -0x1

    .line 12
    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecr:I

    .line 13
    iput v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecs:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzect:Ljava/util/Set;

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecu:Lorg/json/JSONObject;

    .line 17
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdux:Z

    .line 18
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvi:Z

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecv:Ljava/lang/String;

    .line 20
    iput v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecw:I

    return-void
.end method

.method private final zzyc()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeci:Lcom/google/android/gms/internal/ads/zzdyz;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdyz;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 37
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeci:Lcom/google/android/gms/internal/ads/zzdyz;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyz;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v1, "Fail to initialize AdSharedPreferenceManager."

    .line 44
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted while waiting for preferences loaded."

    .line 41
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzyd()V
    .locals 2

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazj;->zzegp:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzk;-><init>(Lcom/google/android/gms/ads/internal/util/zzi;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzc;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return-void

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    const-string p2, "admob"

    goto :goto_0

    :cond_1
    const-string v0, "admob__"

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 29
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazj;->zzegp:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzh;-><init>(Lcom/google/android/gms/ads/internal/util/zzi;Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzc;->zzg(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeci:Lcom/google/android/gms/internal/ads/zzdyz;

    .line 31
    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecg:Z

    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecu:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 206
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 207
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 208
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    .line 210
    monitor-exit v0

    return-void

    :cond_1
    const-string v6, "template_id"

    .line 211
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_2

    const-string v2, "uses_media_view"

    .line 213
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_4
    :goto_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_id"

    .line 220
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uses_media_view"

    .line 221
    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "timestamp_ms"

    .line 222
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecu:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Could not update native advanced settings"

    .line 227
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_5

    const-string p2, "native_advanced_settings"

    .line 229
    iget-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecu:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzao(Z)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdux:Z

    if-ne v1, p1, :cond_0

    .line 66
    monitor-exit v0

    return-void

    .line 67
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdux:Z

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_url_opted_out"

    .line 69
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzap(Z)V
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvi:Z

    if-ne v1, p1, :cond_0

    .line 94
    monitor-exit v0

    return-void

    .line 95
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvi:Z

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_vertical_opted_out"

    .line 97
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Runnable;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzech:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzde(I)V
    .locals 3

    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecs:I

    if-ne v1, p1, :cond_0

    .line 126
    monitor-exit v0

    return-void

    .line 127
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecs:I

    .line 128
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "version_code"

    .line 129
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdf(I)V
    .locals 3

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecr:I

    if-ne v1, p1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    .line 177
    :cond_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecr:I

    .line 178
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "request_in_session_count"

    .line 179
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzef(Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecm:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_url_hashes"

    .line 83
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 86
    monitor-exit v0

    return-void

    .line 80
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzeg(Ljava/lang/String;)V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecn:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "content_vertical_hashes"

    .line 111
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 114
    monitor-exit v0

    return-void

    .line 108
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzeh(Ljava/lang/String;)V
    .locals 5

    .line 137
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 140
    iput-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeco:J

    if-eqz p1, :cond_3

    .line 141
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdto:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdto:Ljava/lang/String;

    .line 144
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_1

    const-string v4, "app_settings_json"

    .line 145
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    const-string v3, "app_settings_last_update_ms"

    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 149
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzech:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 150
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 152
    :cond_2
    monitor-exit v0

    return-void

    .line 142
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzei(Ljava/lang/String;)V
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecv:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    monitor-exit v0

    return-void

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecv:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "display_cutout"

    .line 255
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 258
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzez(J)V
    .locals 4

    .line 159
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecp:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 162
    monitor-exit v0

    return-void

    .line 163
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecp:J

    .line 164
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "app_last_background_time_ms"

    .line 165
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzfa(J)V
    .locals 4

    .line 187
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecq:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 190
    monitor-exit v0

    return-void

    .line 191
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecq:J

    .line 192
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    const-string v2, "first_ad_req_time_ms"

    .line 193
    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 196
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 263
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    .line 265
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastM()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 269
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecl:Z

    .line 270
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "use_https"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdsy:Z

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdsy:Z

    .line 271
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "content_url_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdux:Z

    .line 272
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdux:Z

    .line 273
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "content_url_hashes"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecm:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecm:Ljava/lang/String;

    .line 274
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "auto_collect_location"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdtl:Z

    .line 275
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdtl:Z

    .line 276
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_opted_out"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvi:Z

    .line 277
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvi:Z

    .line 278
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "content_vertical_hashes"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecn:Ljava/lang/String;

    .line 279
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecn:Ljava/lang/String;

    .line 280
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "version_code"

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecs:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecs:I

    .line 281
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_json"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdto:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdto:Ljava/lang/String;

    .line 282
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "app_settings_last_update_ms"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeco:J

    .line 283
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeco:J

    .line 284
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "app_last_background_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecp:J

    .line 285
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecp:J

    .line 286
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "request_in_session_count"

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecr:I

    .line 287
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecr:I

    .line 288
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "first_ad_req_time_ms"

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecq:J

    .line 289
    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecq:J

    .line 290
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "never_pool_slots"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzect:Ljava/util/Set;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzect:Ljava/util/Set;

    .line 291
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "display_cutout"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecv:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecv:Ljava/lang/String;

    .line 292
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string p2, "app_measurement_npa"

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecw:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzclm:Landroid/content/SharedPreferences;

    const-string v0, "native_advanced_settings"

    const-string v2, "{}"

    .line 294
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecu:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Could not convert native advanced settings to json object"

    .line 297
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 299
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzxo()Lcom/google/android/gms/internal/ads/zzrk;
    .locals 3

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecg:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzxp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzxr()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 52
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbt:Lcom/google/android/gms/internal/ads/zzacn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_3

    .line 56
    monitor-exit v0

    return-object v1

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecj:Lcom/google/android/gms/internal/ads/zzrk;

    if-nez v1, :cond_4

    .line 58
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzrk;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecj:Lcom/google/android/gms/internal/ads/zzrk;

    .line 59
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecj:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzrk;->zzmh()V

    const-string v1, "start fetching content..."

    .line 60
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecj:Lcom/google/android/gms/internal/ads/zzrk;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxp()Z
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdux:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxq()Ljava/lang/String;
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecm:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxr()Z
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdvi:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 104
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxs()Ljava/lang/String;
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecn:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxt()Z
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdtl:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxu()I
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecs:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxv()Lcom/google/android/gms/internal/ads/zzayh;
    .locals 5

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzdto:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeco:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Ljava/lang/String;J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxw()J
    .locals 3

    .line 169
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecp:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxx()I
    .locals 2

    .line 183
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecr:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxy()J
    .locals 3

    .line 197
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecq:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzxz()Lorg/json/JSONObject;
    .locals 2

    .line 233
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecu:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzya()V
    .locals 3

    .line 237
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecu:Lorg/json/JSONObject;

    .line 240
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const-string v2, "native_advanced_settings"

    .line 241
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzeck:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyd()V

    .line 244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzyb()Ljava/lang/String;
    .locals 2

    .line 245
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzi;->zzyc()V

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzi;->zzecv:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
