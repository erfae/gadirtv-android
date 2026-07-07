.class final Lcom/google/android/gms/internal/ads/zzaqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdpd:Lcom/google/android/gms/internal/ads/zzaqp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdpd:Lcom/google/android/gms/internal/ads/zzaqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqr;->zzdpd:Lcom/google/android/gms/internal/ads/zzaqp;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqu;->zzdt(Ljava/lang/String;)V

    return-void
.end method
