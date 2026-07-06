.class public abstract Lcom/google/android/gms/common/images/zag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field public final zaa:Lcom/google/android/gms/common/images/zad;

.field public zab:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/zag;->zab:I

    new-instance v0, Lcom/google/android/gms/common/images/zad;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/zad;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zag;->zaa:Lcom/google/android/gms/common/images/zad;

    iput p2, p0, Lcom/google/android/gms/common/images/zag;->zab:I

    return-void
.end method


# virtual methods
.method public abstract zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public final zab(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/images/zag;->zab:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method
