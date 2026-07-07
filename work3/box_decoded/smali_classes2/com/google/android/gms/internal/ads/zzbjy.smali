.class final Lcom/google/android/gms/internal/ads/zzbjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    .line 13
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zze(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdnv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzc(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbjv;->zza(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdnj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbjv;->zzb(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdmu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzb(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdmu;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzdmu;->zzdls:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, ""

    .line 19
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdrx;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzd(Lcom/google/android/gms/internal/ads/zzbjv;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    sget v1, Lcom/google/android/gms/internal/ads/zzcql;->zzgqc:I

    goto :goto_0

    .line 22
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/zzcql;->zzgqb:I

    .line 23
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdnv;->zza(Ljava/util/List;I)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zze(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdnv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzc(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zza(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdnj;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzb(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdmu;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzb(Lcom/google/android/gms/internal/ads/zzbjv;)Lcom/google/android/gms/internal/ads/zzdmu;

    move-result-object v0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzdls:Ljava/util/List;

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "failure_click_attok"

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdrx;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjy;->zzfqc:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzd(Lcom/google/android/gms/internal/ads/zzbjv;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzm;->zzbc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    sget v1, Lcom/google/android/gms/internal/ads/zzcql;->zzgqc:I

    goto :goto_0

    .line 10
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/zzcql;->zzgqb:I

    .line 11
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdnv;->zza(Ljava/util/List;I)V

    return-void
.end method
