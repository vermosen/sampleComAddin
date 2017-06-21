using System;
using System.Linq;
using System.Data;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace testAddin
{
  [ComVisible(true)]
  public interface IVstoBindings
  {
      void exampleFunction();
  }

  [ComVisible(true)]
  [ClassInterface(ClassInterfaceType.None)]
  public partial class vstoBindings : IVstoBindings
  {
    public exampleFunction()
    {
      // do stuff
    }
  }
}
