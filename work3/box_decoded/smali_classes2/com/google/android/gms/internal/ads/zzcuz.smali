.class public Lcom/google/android/gms/internal/ads/zzcuz;
.super Lcom/google/android/gms/internal/ads/zzcwb;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private zzgti:Lcom/google/android/gms/internal/ads/zzbyi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzbte;Lcom/google/android/gms/internal/ads/zzbsb;Lcom/google/android/gms/internal/ads/zzbvy;Lcom/google/android/gms/internal/ads/zzbyn;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbyi;Lcom/google/android/gms/internal/ads/zzbvv;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object v9, p5

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzcwb;-><init>(Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzbte;Lcom/google/android/gms/internal/ads/zzbvy;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbyn;Lcom/google/android/gms/internal/ads/zzbvv;Lcom/google/android/gms/internal/ads/zzbsb;)V

    move-object/from16 v1, p9

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgti:Lcom/google/android/gms/internal/ads/zzbyi;

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgti:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyi;->zztm()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwb;->zza(Lcom/google/android/gms/internal/ads/zzavc;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgti:Lcom/google/android/gms/internal/ads/zzbyi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzava;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzavc;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzavc;->getAmount()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzava;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyi;->zza(Lcom/google/android/gms/internal/ads/zzava;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzava;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwb;->zzb(Lcom/google/android/gms/internal/ads/zzava;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgti:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyi;->zza(Lcom/google/android/gms/internal/ads/zzava;)V

    return-void
.end method

.method public final zzun()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgti:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyi;->zztl()V

    return-void
.end method

.method public final zzuo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgti:Lcom/google/android/gms/internal/ads/zzbyi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyi;->zztm()V

    return-void
.end method
