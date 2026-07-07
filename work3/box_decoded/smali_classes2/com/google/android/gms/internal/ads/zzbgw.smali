.class public final Lcom/google/android/gms/internal/ads/zzbgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzazh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzevc:Lcom/google/android/gms/internal/ads/zzbgl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgw;->zzevc:Lcom/google/android/gms/internal/ads/zzbgl;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbgl;)Lcom/google/android/gms/internal/ads/zzazh;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgl;->zzaeh()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzazh;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgw;->zzevc:Lcom/google/android/gms/internal/ads/zzbgl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgw;->zzb(Lcom/google/android/gms/internal/ads/zzbgl;)Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v0

    return-object v0
.end method
