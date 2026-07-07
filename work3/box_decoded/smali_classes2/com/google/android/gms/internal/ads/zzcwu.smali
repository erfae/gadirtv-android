.class public final Lcom/google/android/gms/internal/ads/zzcwu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcwo<",
        "Lcom/google/android/gms/internal/ads/zzbyx;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzgrt:Lcom/google/android/gms/internal/ads/zzbzx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgrt:Lcom/google/android/gms/internal/ads/zzbzx;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcwr;)Ljava/lang/Object;
    .locals 3

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzcww;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcwt;->zzguz:Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzcww;-><init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzcaf;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgrt:Lcom/google/android/gms/internal/ads/zzbzx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbos;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbos;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzbzx;->zza(Lcom/google/android/gms/internal/ads/zzbos;Lcom/google/android/gms/internal/ads/zzbzc;)Lcom/google/android/gms/internal/ads/zzbyz;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzbyz;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzcwr;->zza(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyz;->zzahh()Lcom/google/android/gms/internal/ads/zzbyx;

    move-result-object p1

    return-object p1
.end method
