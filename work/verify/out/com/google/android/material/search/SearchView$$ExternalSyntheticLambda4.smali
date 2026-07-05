.class public final synthetic Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$2:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$NdBPAXdPfjuofkLwBdfhXC5LLuY(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/material/search/SearchView;->$r8$lambda$xkENgK0o8NkI6sYdug3w2nASPuk(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
