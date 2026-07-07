.class final synthetic Lcom/google/android/gms/internal/ads/zzczd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# instance fields
.field private final zzeda:Landroid/net/Uri;

.field private final zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyx;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczd;->zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczd;->zzeda:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczd;->zzeda:Landroid/net/Uri;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcyx;->zzc(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
