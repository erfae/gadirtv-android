.class public final Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;
.super Lcom/google/android/gms/internal/ads/zzekh$zza;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzekh$zza<",
        "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;",
        "Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;->zzblo()Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzekh$zza;-><init>(Lcom/google/android/gms/internal/ads/zzekh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeod;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbw(Z)Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzinn:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhr()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzinn:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;->zzinm:Lcom/google/android/gms/internal/ads/zzekh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;Z)V

    return-object p0
.end method

.method public final zzfs(J)Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzinn:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhr()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzinn:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;->zzinm:Lcom/google/android/gms/internal/ads/zzekh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;J)V

    return-object p0
.end method

.method public final zzig(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzinn:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhr()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzinn:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi$zza;->zzinm:Lcom/google/android/gms/internal/ads/zzekh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzeoe$zzb$zzi;Ljava/lang/String;)V

    return-object p0
.end method
