.class final Lcom/google/android/gms/internal/ads/zzcwl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field private final synthetic zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final synthetic zzgtq:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final synthetic zzgur:Lcom/google/android/gms/internal/ads/zzazq;

.field private final synthetic zzgus:Lcom/google/android/gms/internal/ads/zzcwr;

.field private final synthetic zzgut:Lcom/google/android/gms/internal/ads/zzcwj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzazq;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcwr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgut:Lcom/google/android/gms/internal/ads/zzcwj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgur:Lcom/google/android/gms/internal/ads/zzazq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgtq:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgus:Lcom/google/android/gms/internal/ads/zzcwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/view/View;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgur:Lcom/google/android/gms/internal/ads/zzazq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgut:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcwj;->zza(Lcom/google/android/gms/internal/ads/zzcwj;)Lcom/google/android/gms/internal/ads/zzcwo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgtq:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgsy:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcwl;->zzgus:Lcom/google/android/gms/internal/ads/zzcwr;

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzcwo;->zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcwr;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazq;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzkb()V
    .locals 0

    return-void
.end method

.method public final zzkc()V
    .locals 0

    return-void
.end method
