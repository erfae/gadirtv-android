.class public final synthetic Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Lcom/google/android/material/search/SearchView;->$r8$lambda$ZZAFRAxyb5ToA7OY2fYaS_PRayA(Lcom/google/android/material/search/SearchView;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Lcom/google/android/material/search/SearchView;->$r8$lambda$ExPaTI05NZan8-hRAbY4u_gxOYk(Lcom/google/android/material/search/SearchView;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
