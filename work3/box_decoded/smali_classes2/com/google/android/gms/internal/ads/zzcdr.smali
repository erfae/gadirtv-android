.class final synthetic Lcom/google/android/gms/internal/ads/zzcdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahv;


# instance fields
.field private final zzgfc:Lcom/google/android/gms/internal/ads/zzcdq;

.field private final zzgfe:Landroid/view/View;

.field private final zzgff:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdq;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzgfe:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzgff:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzgfe:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzgff:Landroid/view/WindowManager;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdq;->zza(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzbdv;Ljava/util/Map;)V

    return-void
.end method
