.class final Lcom/google/android/gms/ads/internal/util/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzace;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uri:Landroid/net/Uri;

.field private final synthetic zzedh:Lcom/google/android/gms/internal/ads/zzacf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzm;Lcom/google/android/gms/internal/ads/zzacf;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzn;->zzedh:Lcom/google/android/gms/internal/ads/zzacf;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzn;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzn;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzsc()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzn;->zzedh:Lcom/google/android/gms/internal/ads/zzacf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacf;->zzse()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 4
    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzn;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzn;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzn;->zzedh:Lcom/google/android/gms/internal/ads/zzacf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzn;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzc(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzsd()V
    .locals 0

    return-void
.end method
