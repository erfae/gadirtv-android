.class public final synthetic Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->$r8$lambda$dUmgJgHGRv_1TrnG_rLo7h18BfI(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/search/SearchBar;

    invoke-static {v0}, Lcom/google/android/material/search/SearchBar;->$r8$lambda$p6NzKwwbHQfO9F5th06TOlM6qLs(Lcom/google/android/material/search/SearchBar;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->$r8$lambda$wybCWNxxo7ogggXT535_C5NdcUQ(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
