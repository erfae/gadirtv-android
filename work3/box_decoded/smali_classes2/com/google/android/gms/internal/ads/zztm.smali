.class final synthetic Lcom/google/android/gms/internal/ads/zztm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbvj:Lcom/google/android/gms/internal/ads/zztn;

.field private final zzbvk:Lcom/google/android/gms/internal/ads/zztc;

.field private final zzbvl:Lcom/google/android/gms/internal/ads/zztf;

.field private final zzbvm:Lcom/google/android/gms/internal/ads/zzazq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztn;Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zztf;Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvj:Lcom/google/android/gms/internal/ads/zztn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvk:Lcom/google/android/gms/internal/ads/zztc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvm:Lcom/google/android/gms/internal/ads/zzazq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvj:Lcom/google/android/gms/internal/ads/zztn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvk:Lcom/google/android/gms/internal/ads/zztc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvm:Lcom/google/android/gms/internal/ads/zzazq;

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zznc()Lcom/google/android/gms/internal/ads/zztg;

    move-result-object v4

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zznd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zztg;->zzc(Lcom/google/android/gms/internal/ads/zztf;)Lcom/google/android/gms/internal/ads/zzta;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zztg;->zza(Lcom/google/android/gms/internal/ads/zztf;)Lcom/google/android/gms/internal/ads/zzta;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzta;->zzmv()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztn;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zztl;->zza(Lcom/google/android/gms/internal/ads/zztl;)V

    return-void

    .line 10
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzto;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzta;->zzmw()Ljava/io/InputStream;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zztn;Ljava/io/InputStream;I)V

    .line 12
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 15
    invoke-virtual {v4, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzta;->zzmy()Z

    move-result v5

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzta;->zznb()Z

    move-result v6

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzta;->zzna()J

    move-result-wide v7

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzta;->zzmz()Z

    move-result v9

    .line 21
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zztt;->zza(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zztt;

    move-result-object v1

    .line 22
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzazq;->set(Ljava/lang/Object;)Z

    return-void

    .line 14
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const-string v2, "Unable to obtain a cache service instance."

    .line 25
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztn;->zzbvh:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztl;->zza(Lcom/google/android/gms/internal/ads/zztl;)V

    return-void
.end method
