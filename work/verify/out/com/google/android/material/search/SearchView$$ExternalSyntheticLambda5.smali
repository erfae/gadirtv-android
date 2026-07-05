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
    .registers 3

    iput p2, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Lcom/google/android/material/search/SearchView;->$r8$lambda$ZZAFRAxyb5ToA7OY2fYaS_PRayA(Lcom/google/android/material/search/SearchView;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Lcom/google/android/material/search/SearchView;->$r8$lambda$ExPaTI05NZan8-hRAbY4u_gxOYk(Lcom/google/android/material/search/SearchView;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->requestFocusAndShowKeyboardIfNeeded()V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
