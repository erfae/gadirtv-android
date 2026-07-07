.class final synthetic Lcom/google/android/gms/internal/ads/zzdci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# instance fields
.field private final zzgzt:Lcom/google/android/gms/internal/ads/zzdcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzgzt:Lcom/google/android/gms/internal/ads/zzdcg;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdci;->zzgzt:Lcom/google/android/gms/internal/ads/zzdcg;

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzdcg;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvk;->zzmy:Landroid/location/Location;

    return-object p1
.end method
